 //
//  ViewController.swift
//  Unit Conversion
//
//  Created by Michael Kim on 7/11/17.
//  Copyright © 2017 Michael Kim. All rights reserved.
//

import UIKit

class ViewController1: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
   
    @IBOutlet weak var metricPickerView: UIPickerView!
    
    @IBOutlet weak var metricFinalValuePickerView: UIPickerView!
    
    @IBOutlet weak var initialValueTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialValueTextField.delegate = self
        initialValueTextField.becomeFirstResponder()
        
        metricPickerView.dataSource = self
        metricPickerView.delegate = self
        metricPickerView.tag = 1

        metricFinalValuePickerView.dataSource = self
        metricFinalValuePickerView.delegate = self
        metricFinalValuePickerView.tag = 2
    }
    //var selectedValue = pickerViewContent[pickerView.selectedRowInComponent(0)]
    var firstChoice:String = "Meter"
    var secondChoice:String = "Foot"
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 1 {
            firstChoice = MetricConversionList.instance.DifferentMetrics.metricName[row] as String
        }
        
        if pickerView.tag == 2 {
            secondChoice = ImperialConversionList.instance.DifferentImperials.ImperialName[row] as String
        }
        
    }
    
    
    
//    var storage : [String] = ["Millimeter", "Centimeter", "Meter", "Kilometer"]
//    var storage2 : [String] = ["Inch" , "Foot" , "Yard" , "Mile"]
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func conversion() -> Double {
        var output: Double = 1
        
        let inputValue:Double? = Double(initialValueTextField.text!)
        
        if inputValue == nil {
            output = 0
        } else {
            switch firstChoice {
                
                
            case "Millimeter":
                if secondChoice == "Inch" {
                    output = inputValue! * 0.001 * 39.37008
                    
                } else if secondChoice == "Foot" {
                    output = inputValue! * 0.001 * 3.28084
                    
                } else if secondChoice == "Yard" {
                    output = inputValue! * 0.001 * 1.09361
                    
                }else if secondChoice == "Mile" {
                    output = inputValue! * 0.001 * 0.000621371
                    
                }
                
            case "Centimeter" :
                if secondChoice == "Inch" {
                    output = inputValue! * 0.01 * 39.37008
                    
                } else if secondChoice == "Foot" {
                    output = inputValue! * 0.01 * 3.23084
                    
                } else if secondChoice == "Yard" {
                    output = inputValue! * 0.01 * 1.09361
                    
                }else if secondChoice == "Mile" {
                    output = inputValue! * 0.01 * 0.000621371
                    
                }
                
            case "Meter" :
                if secondChoice == "Inch" {
                    output = inputValue! * 1 * 39.37008
                    
                } else if secondChoice == "Foot" {
                    output = inputValue! * 1 * 3.23084
                    
                } else if secondChoice == "Yard" {
                    output = inputValue! * 1 * 39.37008
                    
                }else if secondChoice == "Mile" {
                    output = inputValue! * 1 * 0.000621371
                }
                
            case "Kilometer" :
                if secondChoice == "Inch" {
                    output = inputValue! * 1000 * 39.37008
                    
                } else if secondChoice == "Foot" {
                    output = inputValue! * 1000 * 3.28084
                    
                } else if secondChoice == "Yard" {
                    output = inputValue! * 1000 * 1.09361
                    
                }else if secondChoice == "Mile" {
                    output = inputValue! * 1000 * 0.000621371
                }
                
            default:
                
                output = 0
            }
        }
        
        
        
        return output
    }
    
    
    func conversion2() -> String {
        var alertMessage:String = ""
        
        let inputValue:Double? = Double(initialValueTextField.text!)
        
        if inputValue == nil {
            alertMessage = "Put your initial value in the text box"
        } else {
            switch firstChoice {
                
                
            case "Millimeter":
                if secondChoice == "Inch" {
                    
                    alertMessage = "Millimeter -> Inch"
                } else if secondChoice == "Foot" {
                    
                    alertMessage = "Millimeter -> Foot"
                } else if secondChoice == "Yard" {
                    
                    alertMessage = "Millimeter -> Yard"
                }else if secondChoice == "Mile" {
                    
                    alertMessage = "Millimeter -> Mile"
                }
                
            case "Centimeter" :
                if secondChoice == "Inch" {
                    
                    alertMessage = "Centimeter -> Inch"
                } else if secondChoice == "Foot" {
                    
                    alertMessage = "Centimeter -> Foot"
                } else if secondChoice == "Yard" {
                    
                    alertMessage = "Centimeter -> Yard"
                }else if secondChoice == "Mile" {
                    
                    alertMessage = "Centimeter -> Mile"
                }
                
            case "Meter" :
                if secondChoice == "Inch" {
                    
                    alertMessage = "Meter -> Inch"
                } else if secondChoice == "Foot" {
                    
                    alertMessage = "Meter -> Foot"
                } else if secondChoice == "Yard" {
                    
                    alertMessage = "Meter -> Yard"
                }else if secondChoice == "Mile" {
                    
                    alertMessage = "Meter -> Mile"
                }
                
            case "Kilometer" :
                if secondChoice == "Inch" {
                    
                    alertMessage = "Kilometer -> Inch"
                } else if secondChoice == "Foot" {
                    
                    alertMessage = "Kilometer -> Foot"
                } else if secondChoice == "Yard" {
                    
                    alertMessage = "Kilometer -> Yard"
                }else if secondChoice == "Mile" {
                    
                    alertMessage = "Kilometer -> Mile"
                }
                
            default:
                alertMessage = "Error"
            }
        }
        
        return alertMessage
    }
    
    
    

    
    
    
    
    
    @IBAction func convertMerticButoon(_ sender: Any) {
        
        
        
        let alert = UIAlertController(title: "\(self.conversion())", message: "\(self.conversion2())", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alert, animated:true)
        
       
        
        
        
        
//        var alert: UIAlertController
//        
//        
//        alert = UIAlertController(title: "\(inputValue! * 0.001 * 39.37008)", message: "Millimeter -> Inch", preferredStyle: UIAlertControllerStyle.alert)
//        
//        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.default, handler: nil))
//        
//        self.present(alert, animated:true)


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

    /*
     var temp: String = ""
     var secondtemp: String = ""
     
     
     fun conversion()-> (the conversion){}
     
     
     
     switch temp {
     
     case mili :
     //change from mili to given options
        if (secondtemp == "inch"){}
     else if (secondtemp == "foot"){//do somthing}
     ....
     
     
     case centi :
     //change from centi to given options
     
     if (secondtemp == "inch"){}
     else if (secondtemp == "foot"){//do somthing}
     ....
     case meter :
        //do something
     
     default : 
     //do something
     
     }
     
     return the conversion
     
     */
    
    /*
     
     @IBAction...{
        alert.text (self.conversion ())
     }
     */

}

