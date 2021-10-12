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
        chageScreenUpdate()
    }

    @IBAction private func sliderValueChanged(_ sender: UISlider) {
        moveSliderUpdate()
    }

    private func chageScreenUpdate() {
        let delegate = UIApplication.shared.delegate as? AppDelegate
        slider.value = delegate!.slideValue
        sliderLabel.text = String(slider.value)
    }

    private func moveSliderUpdate() {
        let delegate = UIApplication.shared.delegate as? AppDelegate
        delegate!.slideValue = slider.value
        sliderLabel.text = String(delegate!.slideValue)
    }
}
