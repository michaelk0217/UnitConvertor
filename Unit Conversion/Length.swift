//
//  Length.swift
//  Unit Conversion
//
//  Created by Michael Kim on 7/11/17.
//  Copyright © 2017 Michael Kim. All rights reserved.
//

import Foundation
//==========================================================================================================
//Metric
class MetricConversion {
    
    var metricName:[String]

    //var metricValue:Double
    
    init(metricName: [String] /*, metricValue:Double*/) {
        
        self.metricName = metricName
        
//        self.metricValue = metricValue
    }
}

class MetricConversionList {
    
    public static var instance:MetricConversionList = MetricConversionList()
    
    public private(set) var DifferentMetrics: MetricConversion

    
    private init() {
        DifferentMetrics = MetricConversion(metricName: ["Millimeter", "Centimeter", "Meter", "Kilometer"])
    }
    

    

}

//=========================================================================================================
//Imperial
class ImperialConversion {
    
    var ImperialName:[String]
//    var ImperialValue:Double
    
    init(ImperialName: [String]/*, ImperialValue:Double*/) {
        
        self.ImperialName = ImperialName
        //self.ImperialValue = ImperialValue
    }
}

class ImperialConversionList {
    
    public static var instance:ImperialConversionList = ImperialConversionList()
    
    public private(set) var DifferentImperials: ImperialConversion
    
    //    public private(set) var currentImperialIndex: Int
    //
    //    public var currentImperial:ImperialConversion {
    //        get{
    //            return DifferentImperial[currentImperialIndex]
    //        }
    //    }
    
    
    private init() {
        
        DifferentImperials = ImperialConversion(ImperialName: [ "Inch", "Foot", "Yard", "Mile"])
        
    }
    
    
//    private init(){
//        DifferentImperials = [
//            
//            ImperialConversion(ImperialName: "Inch", ImperialValue: 1),
//            ImperialConversion(ImperialName: "Foot", ImperialValue: 12),
//            ImperialConversion(ImperialName: "yard", ImperialValue: 36),
//            ImperialConversion(ImperialName: "Mile", ImperialValue: 63360),
//            
//        ]
//    }
}



