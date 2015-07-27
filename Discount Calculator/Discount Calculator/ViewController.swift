//
//  ViewController.swift
//  Discount Calculator
//
//  Created by Ankur Huralikoppi on 7/25/15.
//  Copyright (c) 2015 Perfection. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputPrice: UITextField!
    @IBOutlet weak var discountPercent: UILabel!
    @IBOutlet weak var discountSlider: UISlider!
    @IBOutlet weak var discountSegments: UISegmentedControl!
    @IBOutlet weak var amountToPayLabel: UILabel!
    
    
    @IBAction func priceEntered(sender: AnyObject) {
        
        var enteredPrice:Int = inputPrice.text.toInt()!
        var priceAfterDiscount = enteredPrice
        
    }
    @IBAction func sliderMoved(sender: AnyObject) {
        var currentDiscount:Float = discountSlider.value
        inputPrice.text = NSString(format: "%.2f", discountSlider.value)
        amountToPayLabel.text = NSString(format: "%.2f", discountSlider.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        discountSlider.minimumValue = 0
        discountSlider.maximumValue = 100
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

