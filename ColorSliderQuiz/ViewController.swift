//
//  ViewController.swift
//  ColorSliderQuiz
//
//  Created by Jaehoon Lee on 2021/07/01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var onOffSwitch: UISwitch!
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 나머지 코드를 채우시오.

    @IBAction func onOffChanged(_ sender: UISwitch) {
        if sender.isOn {
            sliderChanged()
        } else {
            colorView.backgroundColor = UIColor.gray
        }
        redSlider.isEnabled = sender.isOn
        greenSlider.isEnabled = sender.isOn
        blueSlider.isEnabled = sender.isOn
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    

}

