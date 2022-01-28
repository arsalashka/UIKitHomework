//
//  ViewController.swift
//  UIKitHomework
//
//  Created by Arsalan Balzhinimaev on 16.01.2022.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var mainView: UIView!

	@IBOutlet var redLabel: UILabel!
	@IBOutlet var greenLabel: UILabel!
	@IBOutlet var blueLabel: UILabel!

	@IBOutlet var redSlider: UISlider!
	@IBOutlet var greenSlider: UISlider!
	@IBOutlet var blueSlider: UISlider!


	override func viewDidLoad() {
		super.viewDidLoad()

		// Sliders
		redSlider.minimumTrackTintColor = .red
		greenSlider.minimumTrackTintColor = .green

		// Labels
		setValue(for: redLabel, greenLabel, blueLabel)

		// mainView
		mainView.layer.cornerRadius = 15
		paintMainView()
	}

	@IBAction func rgbSliders(_ sender: UISlider) {

		switch sender {
		case redSlider:
			redLabel.text = string(form: redSlider)
		case greenSlider:
			greenLabel.text = string(form: greenSlider)
		default:
			blueLabel.text = string(form: blueSlider)
		}
		paintMainView()
	}
}


// MARK: - Private Methods

extension ViewController {
	private func paintMainView() {
		mainView.backgroundColor = UIColor(
			red: CGFloat(redSlider.value),
			green: CGFloat(greenSlider.value),
			blue: CGFloat(blueSlider.value),
			alpha: 1
		)
	}

	private func setValue(for labels: UILabel...) {
		labels.forEach { label in
			switch label {
			case redLabel:
				redLabel.text = string(form: redSlider)
			case greenLabel:
				greenLabel.text = string(form: greenSlider)
			default:
				blueLabel.text = string(form: blueSlider)
			}
		}
	}

	private func string(form slider: UISlider) -> String {
		String(format: "%.2f", slider.value)
	}
}
