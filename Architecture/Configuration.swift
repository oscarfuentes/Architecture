//
//  Configuration.swift
//  Architecture
//
//  Created by Oscar on 3/5/16.
//  Copyright © 2016 Oscar Fuentes. All rights reserved.
//

import Foundation

public class Configuration: Object {
    
    public var serverApplicationId	: String?
    public var serverClientKey		: String?
    
    public var payload				: [NSObject: AnyObject]?
    
    public var analyticsEnabled		= false
    
    public var rootWireframe		: Wireframe?
    
}