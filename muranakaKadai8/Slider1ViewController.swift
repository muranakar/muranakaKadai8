//
//  Slider1ViewController.swift
//  muranakaKadai8
//
//  Created by 村中令 on 2021/10/06.
//

import UIKit

class Slider1ViewController: UIViewController {
    @IBOutlet private weak var sliderLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!

    private var delegate: AppDelegate {
        // swiftlint:disable:next force_cast
        UIApplication.shared.delegate as! AppDelegate
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        chageScreenUpdate()
    }

    @IBAction private func sliderValueChanged(_ sender: UISlider) {
        moveSliderUpdate()
    }

    private func chageScreenUpdate() {
        slider.value = delegate.value
        sliderLabel.text = String(delegate.value)
    }

    private func moveSliderUpdate() {
        delegate.value = slider.value
        sliderLabel.text = String(slider.value)
    }
}
