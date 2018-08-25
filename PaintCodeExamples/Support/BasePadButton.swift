//
//  BasePadButton.swift
//  PaintCodeExamples
//
//  Created by Shane Whitehead on 25/8/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import Foundation
import UIKit

class BasePadButton: UIButton, UIGestureRecognizerDelegate {
	
	private var normalCached: UIImage?
	private var pressedCached: UIImage?
	
	var normalImage: UIImage? {
		if normalCached != nil {
			return normalCached
		}
		normalCached = image(pressed: false)
		return normalCached
	}
	
	var pressedImage: UIImage? {
		if pressedCached != nil {
			return pressedCached
		}
		pressedCached = image(pressed: true)
		return pressedCached
	}
	
	var disabledImage: UIImage? {
		return image(enabled: false)
	}
	
	var value: String?
	
	override var isEnabled: Bool {
		didSet {
			applyEnabledState()
		}
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		commonInit()
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		commonInit()
	}
	
	override func prepareForInterfaceBuilder() {
		super.prepareForInterfaceBuilder()
		commonInit()
		applyNormalState()
	}
	
	func commonInit() {
		adjustsImageWhenDisabled = false
		adjustsImageWhenHighlighted = false
		
		setTitle(nil, for: [])
		setImage(nil, for: [])
		imageView?.contentMode = .scaleToFill
		
		addTarget(self, action: #selector(touchDown(_:)), for: .touchDown)
		addTarget(self, action: #selector(touchUp(_:)), for: .touchUpInside)
		addTarget(self, action: #selector(touchUp(_:)), for: .touchUpOutside)
		
		applyNormalState()
	}
	
	override func title(for state: UIControl.State) -> String? {
		return nil
	}
	
	internal func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		fatalError("KeyBasePadButton image(pressed:enabled:) not yet implemented")
	}
	
	@objc func touchDown(_ sender: UIButton) {
		pressed()
	}
	
	@objc func touchUp(_ sender: UIButton) {
		released()
	}
	
	func released() {
		guard !isSeeThrough else {
			return
		}
		animateRelease()
	}
	
	func pressed() {
		guard !isSeeThrough else {
			return
		}
		applyPressedState()
	}
	
	internal func animateRelease() {
		DispatchQueue.global(qos: .userInitiated).async {
			Thread.sleep(forTimeInterval: 0.1)
			DispatchQueue.main.async {
				self.animate(duration: 0.5, image: self.normalImage)
			}
		}
	}
	
	internal func animate(duration: TimeInterval, image: UIImage?) {
		UIView.transition(with: self, duration: duration, options: [.allowUserInteraction, .transitionCrossDissolve], animations: {
			self.setBackgroundImage(image, for: [])
		}) { (done) in
		}
	}
	
	// This is some what of a hack, instead of setting the component hidden
	// which can affect the layout of stackviews, we simply make it "see through"
	// (so to speak)
	var isSeeThrough: Bool = false {
		didSet {
			if isSeeThrough {
				animate(duration: 0.5, image: nil)
			} else {
				animate(duration: 0.5, image: imageForCurrentState)
			}
		}
	}
	
	internal var imageForCurrentState: UIImage? {
		if isEnabled {
			return normalImage
		} else {
			return disabledImage
		}
	}
	
	internal func applyNormalState() {
		guard let image = normalImage else {
			return
		}
		setBackgroundImage(image, for: [])
	}
	
	internal func applyPressedState() {
		guard let image = pressedImage else {
			return
		}
		setBackgroundImage(image, for: [])
	}
	
	internal func applyEnabledState() {
		if isEnabled {
			guard let image = normalImage else {
				return
			}
			setBackgroundImage(image, for: [])
		} else {
			guard let image = disabledImage else {
				return
			}
			setBackgroundImage(image, for: [])
		}
	}
	
}
