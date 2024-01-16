//
//  KeyPadOneViewController.swift
//  PaintCodeExamples
//
//  Created by Shane Whitehead on 25/8/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import UIKit

class DialPadViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
        overrideUserInterfaceStyle = .light
	}

}

class DialPadOneButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfDialPadNumber01(pressed2: pressed)
	}
	
}

class DialPadTwoButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfDialPadNumber02(pressed2: pressed)
	}
	
}

class DialPadThreeButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfDialPadNumber03(pressed2: pressed)
	}
	
}

class DialPadFourButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfDialPadNumber04(pressed2: pressed)
	}
	
}

class DialPadFiveButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfDialPadNumber05(pressed2: pressed)
	}
	
}

class DialPadSixButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfDialPadNumber06(pressed2: pressed)
	}
	
}

class DialPadSevenButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfDialPadNumber07(pressed2: pressed)
	}
	
}

class DialPadEightButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfDialPadNumber08(pressed2: pressed)
	}
	
}

class DialPadNineButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfDialPadNumber09(pressed2: pressed)
	}
	
}

class DialPadStarButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfDialPadStar(pressed2: pressed)
	}
	
}

class DialPadZeroButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfDialPadNumber00(pressed2: pressed)
	}
	
}

class DialPadHashButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfDialPadHash(pressed2: pressed)
	}
	
}

class DialPadContactButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfDialPadContact(pressed2: pressed)
	}
	
}

class DialPadCallButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfDialPadCall(pressed2: pressed)
	}
	
}

class DialPadBackSpaceButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfDialPadDelete(pressed2: pressed)
	}
	
}
