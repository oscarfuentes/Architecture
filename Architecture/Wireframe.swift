//
//  Wireframe.swift
//  Architecture
//
//  Created by Oscar on 3/5/16.
//  Copyright © 2016 Oscar Fuentes. All rights reserved.
//

import Foundation

public protocol WireframeProtocol {
    
    var interface: Interface { get }
    
}

public class Wireframe : Object, WireframeProtocol {
    
    public var interface: Interface {
        get {
            return Interface()
        }
    }
    
//    var interface	: Interface? {
//        didSet {
//            interface?.wireframe	= self
//            interface?.presenter 	= presenter
//            presenter?.controller 	= interface
//        }
//    }
//    
//    var presenter 	: Presenter? {
//        didSet {
//            presenter?.wireframe	= self
//            presenter?.interactor 	= interactor
//            interface?.presenter 	= presenter
//            presenter?.controller 	= interface
//            interactor?.presenter	= presenter
//        }
//    }
//    
//    var interactor	: Interactor? {
//        didSet {
//            interactor?.wireframe	= self
//            presenter?.interactor 	= interactor
//            interactor?.presenter	= presenter
//        }
//    }
//    
//    override init() {
//        super.init()
//        setup()
//    }
//    
//    func setup() {
//        
//    }
//    
//    func present(wireframe: Wireframe) {
//        if let endInterface = wireframe.interface {
//            interface?.presentViewController(endInterface, animated: true, completion: nil)
//            Application.sharedInstance.currentWireframe = wireframe
//        }
//    }
//    
//    func dismiss() {
//        interface?.dismissViewControllerAnimated(true, completion: nil)
//    }
    
}