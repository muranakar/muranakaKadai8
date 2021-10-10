//
//  Slider2ViewController.swift
//  muranakaKadai8
//
//  Created by 村中令 on 2021/10/06.
//

import UIKit

class Slider2ViewController: UIViewController {
    @IBOutlet private weak var sliderLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        slider.value = UserDefaults.standard.float(forKey: "sliderValue")
        sliderLabel.text = String(slider.value)
    }

    @IBAction private func sliderValueChanged(_ sender: UISlider) {
        UserDefaults.standard.set(slider.value, forKey: "sliderValue")
        sliderLabel.text = String(slider.value)
    }
}
