//
//  UIWindow+Extension.swift
//  Architecture
//
//  Created by Oscar on 3/5/16.
//  Copyright © 2016 Oscar Fuentes. All rights reserved.
//

import Foundation

extension UIWindow {
    
    private struct AssociatedKeys {
        static var RootWireframe = "nsh_Root_Wireframe"
    }
    
    var rootWireframe : Wireframe? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.RootWireframe) as? Wireframe
        }
        
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(
                    self,
                    &AssociatedKeys.RootWireframe,
                    newValue,
                    .OBJC_ASSOCIATION_RETAIN_NONATOMIC
                )
                
                rootViewController = newValue.interface
            } else {
                rootViewController = nil
            }
        }
    }
    
}