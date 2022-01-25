//
//  ViewController.swift
//  UIKitHomework
//
//  Created by Arsalan Balzhinimaev on 16.01.2022.
//

import UIKit

class ViewController: UIViewController {

	var redSliderValue: CGFloat = 0
	var greenSliderValue: CGFloat = 0
	var blueSliderValue: CGFloat = 0

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
		blueSlider.minimumTrackTintColor = .blue

		redLabel.text = String(redSlider.value)
		greenLabel.text = String(greenSlider.value)
		blueLabel.text = String(blueSlider.value)

		redSliderValue = CGFloat(redSlider.value)
		greenSliderValue = CGFloat(greenSlider.value)
		blueSliderValue = CGFloat(blueSlider.value)

		// mainView
		mainView.layer.cornerRadius = 15
		mainView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
	}

	@IBAction func setRedSlider() {
		redLabel.text = String(format: "%.2f", redSlider.value)
		redSliderValue = CGFloat(redSlider.value)
		mainView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
	}

	@IBAction func serGreenSlider() {
		greenLabel.text = String(format: "%.2f", greenSlider.value)
		greenSliderValue = CGFloat(greenSlider.value)
		mainView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
	}

	@IBAction func setBlueSlider() {
		blueLabel.text = String(format: "%.2f", blueSlider.value)
		blueSliderValue = CGFloat(blueSlider.value)
		mainView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
	}
}
