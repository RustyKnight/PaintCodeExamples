//
//  IntroductionViewController.swift
//  PaintCodeExamples
//
//  Created by Shane Whitehead on 26/8/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import UIKit

class IntroductionViewController: UIViewController {
	
	@IBOutlet weak var textView: UITextView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
        overrideUserInterfaceStyle = .light
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		textView.centerVertically()
	}
	
}

extension UITextView {
	
	func centerVertically() {
		let fittingSize = CGSize(width: bounds.width, height: CGFloat.greatestFiniteMagnitude)
		let size = sizeThatFits(fittingSize)
		let topOffset = (bounds.size.height - size.height * zoomScale) / 2
		let positiveTopOffset = max(1, topOffset)
		contentOffset.y = -positiveTopOffset
	}
	
}
