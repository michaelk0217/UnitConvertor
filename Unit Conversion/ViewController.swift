 //
//  ViewController.swift
//  Unit Conversion
//
//  Created by Michael Kim on 7/11/17.
//  Copyright © 2017 Michael Kim. All rights reserved.
//

import UIKit

class ViewController1: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
   
    @IBOutlet weak var metricPickerView: UIPickerView!
    
    @IBOutlet weak var metricFinalValuePickerView: UIPickerView!
    
    @IBOutlet weak var initialValueTextField: UITextField!
    
    
    
    @IBAction func convertMetricButtonPressed(_ sender: Any) {
        var alert: UIAlertController
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        metricPickerView.dataSource = self
        metricPickerView.delegate = self
        metricPickerView.tag = 1

        metricFinalValuePickerView.dataSource = self
        metricFinalValuePickerView.delegate = self
        metricFinalValuePickerView.tag = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView (_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            return MetricConversionList.instance.DifferentMetrics.metricName.count
        }
        if pickerView.tag == 2 {
            return ImperialConversionList.instance.DifferentImperials.ImperialName.count
        }
        else {return 4}
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        if pickerView.tag == 1 {
            return MetricConversionList.instance.DifferentMetrics.metricName[row]
        }
        if pickerView.tag == 2 {
            return ImperialConversionList.instance.DifferentImperials.ImperialName[row]
        }
        else{
            return "error"
        }
        
        
    }


}

