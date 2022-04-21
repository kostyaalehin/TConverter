//
//  ViewController.swift
//  TConverter
//
//  Created by Константин Алехин on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var sliderOutlet: UISlider! {
        didSet {
            sliderOutlet.maximumValue = 100
            sliderOutlet.minimumValue = 0
            sliderOutlet.value = 0
        }
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        print(temperatureCelsius)
        celiusLabel.text = "\(temperatureCelsius) С"
        let temperatureFahrenheit = Int(round(sender.value * 9 / 5) + 32)
        fahrenheitLabel.text = "\(temperatureFahrenheit) F"
    }
}

