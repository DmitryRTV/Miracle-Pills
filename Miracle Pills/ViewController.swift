//
//  ViewController.swift
//  Miracle Pills
//
//  Created by Dmitri Marian on 6/22/17.
//  Copyright © 2017 DmitryRTV. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtm: UIButton!
    @IBOutlet weak var doneBnt: UIButton!
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var finalImage: UIImageView!
    @IBOutlet weak var coverView: UIView!
    @IBOutlet weak var miraclePillEmiji: UIImageView!
    @IBOutlet weak var MiraclePillsLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var Devider: UIView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var enterYourName: UITextField!
    @IBOutlet weak var streetAdressLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var enterYourAddress: UITextField!
    @IBOutlet weak var buyImage: UIImageView!
    @IBOutlet weak var backRound: UIImageView!
    @IBOutlet weak var helloWorldImage: UIImageView!
    @IBOutlet weak var topToStartBtn: UIButton!
    
    
    let states = ["Alaska",
    "Alabama",
    "Arkansas",
    "American Samoa",
    "Arizona",
    "California",
    "Colorado",
    "Connecticut",
    "District of Columbia",
    "Delaware",
    "Florida",
    "Georgia",
    "Guam",
    "Hawaii",
    "Iowa",
    "Idaho",
    "Illinois",
    "Indiana",
    "Kansas",
    "Kentucky",
    "Louisiana",
    "Massachusetts",
    "Maryland",
    "Maine",
    "Michigan",
    "Minnesota",
    "Missouri",
    "Mississippi",
    "Montana",
    "North Carolina",
    " North Dakota",
    "Nebraska",
    "New Hampshire",
    "New Jersey",
    "New Mexico",
    "Nevada",
    "New York",
    "Ohio",
    "Oklahoma",
    "Oregon",
    "Pennsylvania",
    "Puerto Rico",
    "Rhode Island",
    "South Carolina",
    "South Dakota",
    "Tennessee",
    "Texas",
    "Utah",
    "Virginia",
    "Virgin Islands",
    "Vermont",
    "Washington",
    "Wisconsin",
    "West Virginia",
    "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    @IBAction func stateBtmPressed(_ sender: Any) {
        statePicker.isHidden = false
        
    }
    
    @IBAction func doneBtnPressed(_ sender: Any) {
        statePicker.isHidden = true
        doneBnt.isHidden = true
    }
    
    @IBAction func buyBtn(_ sender: Any) {
        finalImage.isHidden = false
    coverView.isHidden = false

    }
    
    
    @IBAction func topToBuyBtnPressed(_ sender: Any) {
        miraclePillEmiji.isHidden = false
        MiraclePillsLabel.isHidden = false
        amountLabel.isHidden = false
        Devider.isHidden = false
        fullNameLabel.isHidden = false
        enterYourName.isHidden = false
        streetAdressLabel.isHidden = false
        stateLabel.isHidden = false
        enterYourAddress.isHidden = false
        statePickerBtm.isHidden = false
        buyBtn.isHidden = false
        doneBnt.isHidden = false
        buyImage.isHidden = false
        helloWorldImage.isHidden = true
        backRound.isHidden = true
        topToStartBtn.isHidden = true
    }
    
    
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtm.setTitle(states[row], for: UIControlState.normal)
        doneBnt.isHidden = false    }
}

