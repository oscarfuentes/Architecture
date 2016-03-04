//
//  Application.swift
//  Architecture
//
//  Created by Oscar on 3/5/16.
//  Copyright © 2016 Oscar Fuentes. All rights reserved.
//

import Foundation
import Parse

public class Application: Object {
    
    public static let sharedInstance	= Application()
    
    public var environment				: Environment	= .Development
    public var testingLevel				: Testing		= .None
    
    public var rootWireframe			: Wireframe? {
        didSet {
            currentWireframe			= rootWireframe
            let window					= UIApplication.sharedApplication().keyWindow
            window?.rootWireframe		= rootWireframe
            window?.makeKeyAndVisible()
        }
    }
    
    public var currentWireframe			: Wireframe?
    
    /**
     
     Setup the application.
     
     - Parameters:
     - delegate  	: AppDelegate UIApplication delegate.
     - application	: UIApplication shared instance.
     - payload  	: [NSObject: AnyObject]? application payload.
     
     */
    
    static public func setup(configuration: Configuration? = nil) -> Bool {
        if let configuration = configuration {
            if let serverApplicationId = configuration.serverApplicationId,
                serverClientKey = configuration.serverClientKey {
                    Application.configureServer(serverApplicationId, serverClientKey: serverClientKey)
                    Application.configureUser()
                    
                    if configuration.analyticsEnabled {
                        Application.configureAnalytics(configuration.payload)
                    }
            }
            
            if let rootWireframe = configuration.rootWireframe {
                Application.configureWireframe(rootWireframe)
            }
        }
        
        return true
    }
    
    /**
     
     Configures the server.
     
     */
    
    static private func configureServer(serverApplicationId: String, serverClientKey: String) {
        Parse.enableLocalDatastore()
        Parse.setApplicationId(serverApplicationId, clientKey: serverClientKey)
    }
    
    /**
     
     Configures the user.
     
     */
    
    static private func configureUser() {
        PFUser.enableAutomaticUser()
        PFUser.currentUser()?.saveInBackground()
    }
    
    /**
     
     Configures the analytics.
     
     - Parameters:
     - payload  	: [NSObject: AnyObject]? application payload.
     
     */
    
    static private func configureAnalytics(payload: [NSObject: AnyObject]?) {
        PFAnalytics.trackAppOpenedWithLaunchOptions(payload)
    }
    
    /**
     
     Configures Window.
     
     - Parameters:
     - delegate  : AppDelegate UIApplication delegate.
     
     */
    
    static private func configureWireframe(wireframe: Wireframe) {
        Application.sharedInstance.rootWireframe = wireframe
    }
    
}