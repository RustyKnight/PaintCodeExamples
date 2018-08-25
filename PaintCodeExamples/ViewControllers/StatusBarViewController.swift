//
//  StatusBarViewController.swift
//  PaintCodeExamples
//
//  Created by Shane Whitehead on 25/8/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import UIKit
import AnimatorKit

class StatusBarViewController: UIViewController {
	
	@IBOutlet var batteryDischargeImageView: UIImageView!
	@IBOutlet var batteryChargeImageView: UIImageView!
	@IBOutlet var batteryChargeProgressImageView: UIImageView!
	@IBOutlet var signalStrengthImageView: UIImageView!
	
	private var dischargeAnimator: DurationAnimator!
	private var chargeAnimator: DurationAnimator!
	private var signalStrengthAnimator: DurationAnimator!
	private var chargeProgressAnimator: DurationAnimator!

	override func viewDidLoad() {
		super.viewDidLoad()
		
		dischargeAnimator = DurationAnimator(duration: 60.0)
		dischargeAnimator.delegate = DischargeDelegate(imageView: batteryDischargeImageView)
		chargeAnimator = DurationAnimator(duration: 60.0)
		chargeAnimator.delegate = ChargeDelegate(imageView: batteryChargeImageView)

		signalStrengthAnimator = DurationAnimator(duration: 10.0)
		signalStrengthAnimator.delegate = SignalStrengthDelegate(imageView: signalStrengthImageView)
		
		chargeProgressAnimator = DurationAnimator(duration: 3.0)
		chargeProgressAnimator.delegate = ChargeProgressDelegate(imageView: batteryChargeProgressImageView)

		batteryDischargeImageView.image = Examples.imageOfBatteryDischargingStatus(batteryCharge: 1.0)
		batteryChargeImageView.image = Examples.imageOfBatteryChargingStatus(batteryCharge: 0.0)
		batteryChargeProgressImageView.image = Examples.imageOfBatteryAnimatedCharging(batteryCharge: 1.0, batteryChargeTextValue: "100%")
		signalStrengthImageView.image = Examples.imageOfSignalStrength(signalStrengthValue: 0.0)
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
		dischargeAnimator.start()
		chargeProgressAnimator.start()
		chargeAnimator.start()
		signalStrengthAnimator.start()
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		print("Stop Animators")
		dischargeAnimator.start()
		chargeProgressAnimator.stop()
		chargeAnimator.stop()
		signalStrengthAnimator.stop()
	}
	
}

class BasicDurationAnimatorDelegate: DurationAnimatorDelegate {
	var imageView: UIImageView
	
	init(imageView: UIImageView) {
		self.imageView = imageView
	}

	func didTick(animation: DurationAnimator, progress: Double) {
	}
	
	func didComplete(animation: DurationAnimator, completed: Bool) {
		guard completed else {
			return
		}
		
		afterStart(animator: animation)
	}
	
	func afterStart(animator: DurationAnimator) {
		DispatchQueue.global(qos: .userInitiated).async {
			Thread.sleep(forTimeInterval: 0.5)
			DispatchQueue.main.async {
				animator.start()
			}
		}
	}

}

class ChargeProgressDelegate: BasicDurationAnimatorDelegate {
	
	var charge: Double = 0
	var numberFormatter: NumberFormatter = {
		let formatter = NumberFormatter()
		formatter.numberStyle = .percent
		return formatter
	}()
	
	override init(imageView: UIImageView) {
		super.init(imageView: imageView)
	}

	override func didTick(animation: DurationAnimator, progress: Double) {
		imageView.image = Examples.imageOfBatteryAnimatedCharging(batteryCharge: CGFloat(max(0, min(1, progress))),
																															batteryChargeTextValue: numberFormatter.string(from: NSNumber(value: charge))!)
	}
	
	override func didComplete(animation: DurationAnimator, completed: Bool) {
		guard completed else {
			return
		}
		super.didComplete(animation: animation, completed: completed)
		charge += 0.001
		if charge > 1.0 {
			charge = 0
		}
	}
	
}

class ChargeDelegate: BasicDurationAnimatorDelegate {
	
	override init(imageView: UIImageView) {
		super.init(imageView: imageView)
	}

	override func didTick(animation: DurationAnimator, progress: Double) {
		imageView.image = Examples.imageOfBatteryChargingStatus(batteryCharge: CGFloat(max(0, min(1, progress))))
	}

}

class DischargeDelegate: BasicDurationAnimatorDelegate {
	
	override init(imageView: UIImageView) {
		super.init(imageView: imageView)
	}
	
	override func didTick(animation: DurationAnimator, progress: Double) {
		imageView.image = Examples.imageOfBatteryDischargingStatus(batteryCharge: CGFloat(max(0, min(1, 1.0 - progress))))
	}
	
}

class SignalStrengthDelegate: BasicDurationAnimatorDelegate {
	
	override init(imageView: UIImageView) {
		super.init(imageView: imageView)
	}
	
	override func didTick(animation: DurationAnimator, progress: Double) {
		let value = CGFloat(max(0, min(1, progress))) * 5.0
		imageView.image = Examples.imageOfSignalStrength(signalStrengthValue: value)
	}
	
}
