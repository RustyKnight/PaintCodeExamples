//
//  MultiPartImagesViewController.swift
//  PaintCodeExamples
//
//  Created by Shane Whitehead on 25/8/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import UIKit

class MultiPartImagesViewController: UIViewController {
	
	@IBOutlet weak var greenButton: UIButton!
	@IBOutlet weak var redButton: UIButton!
	@IBOutlet weak var greyButton: UIButton!
	
	@IBOutlet weak var outgoingMessageImageView: UIImageView!
	@IBOutlet weak var incomingMessageImageView: UIImageView!
	@IBOutlet weak var backgroundImageView: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
        overrideUserInterfaceStyle = .light

		greenButton.setBackgroundImage(Examples.imageOfGreenRoundButton, for: [])
		redButton.setBackgroundImage(Examples.imageOfSOSRoundButton, for: [])
		greyButton.setBackgroundImage(Examples.imageOfRoundButton, for: [])
		
		incomingMessageImageView.image = Examples.imageOfIncomingMessageBubble
		outgoingMessageImageView.image = Examples.imageOfOutgoingMessageBubble
		
		backgroundImageView.image = Examples.imageOfPanelBackground
	}
	
}
