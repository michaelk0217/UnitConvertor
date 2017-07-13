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
    
    
    init(metricName: [String]) {
        
        self.metricName = metricName
        
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

    
    init(ImperialName: [String]) {
        
        self.ImperialName = ImperialName

    }
}

class ImperialConversionList {
    
    public static var instance:ImperialConversionList = ImperialConversionList()
    
    public private(set) var DifferentImperials: ImperialConversion
    
        
    
    private init() {
        
        DifferentImperials = ImperialConversion(ImperialName: [ "Inch", "Foot", "Yard", "Mile"])
        
    }
    
    
}



