//
//  ViewController.swift
//  Currency Converter
//
//  Created by Bryan  Miller on 8/8/16.
//  Copyright © 2016 iron yard. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var dollarAmountTextfield: UITextField!
    
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
       textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldClear(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBOutlet weak var EurResultLabel: UILabel!
    
    
 
    @IBOutlet weak var MexicoResltsLabel: UILabel!
    
    
    @IBOutlet weak var ChinaResultsLabel: UILabel!
    
    
    @IBOutlet weak var CanadaResultLabel: UILabel!

    @IBOutlet weak var convertButon: UIButton!
    
 

    @IBAction func conVertButtonPressed(sender: AnyObject) {
        //convert to eur
        let dollarAmount =  Float(dollarAmountTextfield.text!)
        let eur = dollarAmount! * 1.29
        EurResultLabel.text = String (eur)
        
        //convert to peso

        let peso = dollarAmount! * 18.55
        MexicoResltsLabel.text = String (peso)
        
        //convert to China
        
        let yuan = dollarAmount! * 6.66
        ChinaResultsLabel.text = String (yuan)
        
        //convert to Canada
        
        
        let can = dollarAmount! * 1.32
        CanadaResultLabel.text = String (can)
    }


override func viewDidLoad() {
    super.viewDidLoad()
    dollarAmountTextfield.delegate = self
    }

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}
}