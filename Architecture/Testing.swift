//
//  Testing.swift
//  Architecture
//
//  Created by Oscar on 3/5/16.
//  Copyright © 2016 Oscar Fuentes. All rights reserved.
//

import Foundation

public struct Testing: OptionSetType {
    
    public let rawValue				: UInt
    
    static let None 				= Testing(rawValue: 0)
    static let Defect 				= Testing(rawValue: 1)
    static let Path 				= Testing(rawValue: 1 << 1)
    static let DataSet 				= Testing(rawValue: 1 << 2)
    static let Unit 				= Testing(rawValue: 1 << 3)
    static let System 				= Testing(rawValue: 1 << 4)
    static let Integration 			= Testing(rawValue: 1 << 5)
    static let BlackBox 			= Testing(rawValue: 1 << 6)
    static let WhiteBox		 		= Testing(rawValue: 1 << 7)
    static let Regression 			= Testing(rawValue: 1 << 8)
    static let Automation 			= Testing(rawValue: 1 << 9)
    static let UserAcceptance 		= Testing(rawValue: 1 << 10)
    static let SoftwarePerformance	= Testing(rawValue: 1 << 11)
    
    public init(rawValue: UInt) {
        self.rawValue 				= rawValue
    }
    
}