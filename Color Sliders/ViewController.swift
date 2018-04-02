//
//  ViewController.swift
//  Color Sliders
//
//  Created by CSSE Department on 3/7/18.
//  Copyright © 2018 Praneet CSSE484. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    
    @IBOutlet weak var colorView: UIView!
    
    @IBAction func sliderChange(_ sender: Any) {
        updateView()
    }
    
    func updateView(){
        print("Red value: \(redSlider.value), Green value: \(greenSlider.value), Blue value: \(blueSlider.value), Alpha value: \(alphaSlider.value)")
        
        //TODO: Update labels
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        alphaLabel.text = String(format: "%.2f", alphaSlider.value)
        
        //TODO: Update Color View
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: CGFloat(alphaSlider.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.value = 0.71
        greenSlider.value = 0.04
        blueSlider.value = 0.22
        alphaSlider.value = 1.0
        updateView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

