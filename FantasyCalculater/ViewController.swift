//
//  ViewController.swift
//  FantasyCalculater
//
//  Created by Student on 2016-11-24.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    //MARK: Properties
    
    var firstColumn : [String] = ["0", "1", "2", "3", "4"]
    var secondColumn : [String] = ["A", "B", "C", "D", "E"]
    
    //components of the picker view
    
    var components : [[String]] = []
    
    @IBOutlet weak var labelResult: UILabel!
    
    @IBOutlet weak var picker: UIPickerView!
    
    //MARK: Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
        
        //make the view controller the delegate and data source for the picker
        picker.dataSource = self
        picker.delegate = self
        @IBOutlet weak var textFieldAssists: UITextField!
        @IBOutlet weak var textFieldAssists: UITextField!
        
        //set up the components of this picker view
        
        components += [firstColumn] //add the first column
        components += [[":"]]  // add divider column
        components += [secondColumn] // add the second scrolling column
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: delegates and data sources
    //This tells the picker view how many spinners there will be (columns)
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return components.count
    }
// this tells the picker view how many rows there are in each column 
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return components[component].count
    }

// this lets the picker view populate itself
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return components[component][row]
    }

    // this lets the picker view return data selected, and loads it into the label
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var resultString = ""
        for index in 0..<components.count{
            let digit = components[index][pickerView.selectedRow(inComponent: index)]
            resultString += digit
        }
        labelResult.text = resultString
    }

}


