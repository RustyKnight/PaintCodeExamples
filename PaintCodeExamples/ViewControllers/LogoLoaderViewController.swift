//
//  LogoLoaderViewController.swift
//  PaintCodeExamples
//
//  Created by Shane Whitehead on 25/8/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import UIKit
import SuperSimpleAnimatorKit

class LogoLoaderViewController: UIViewController {
	
	@IBOutlet weak var logoImageView: UIImageView!
	
	var animator: LinearAnimator!
	var progress: Double = 0

	override func viewDidLoad() {
		super.viewDidLoad()
        overrideUserInterfaceStyle = .light
		logoImageView.image = Examples.imageOfLogoLoader()
		animator = LinearAnimator()
		animator.delegate = self
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		animator.start()
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		animator.stop()
	}
	
}

extension LogoLoaderViewController: LinearAnimatorDelegate {
	
	func didTick(animation: LinearAnimator) {
		progress += 0.0125
		logoImageView.image = Examples.imageOfLogoLoader(cycleProgress: CGFloat(progress))
	}
	
}
