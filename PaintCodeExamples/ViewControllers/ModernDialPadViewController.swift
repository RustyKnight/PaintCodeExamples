//
//  ModernDialPadViewController.swift
//  PaintCodeExamples
//
//  Created by Shane Whitehead on 25/8/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import UIKit

class ModernDialPadViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
}

class ModernDialPadOneButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfKeyPad01(pressed: pressed, enabled: enabled)
	}
	
}

class ModernDialPadTwoButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfKeyPad02(pressed: pressed, enabled: enabled)
	}
	
}

class ModernDialPadThreeButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfKeyPad03(pressed: pressed, enabled: enabled)
	}
	
}

class ModernDialPadFourButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfKeyPad04(pressed: pressed, enabled: enabled)
	}
	
}

class ModernDialPadFiveButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfKeyPad05(pressed: pressed, enabled: enabled)
	}
	
}

class ModernDialPadSixButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfKeyPad06(pressed: pressed, enabled: enabled)
	}
	
}

class ModernDialPadSevenButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfKeyPad07(pressed: pressed, enabled: enabled)
	}
	
}

class ModernDialPadEightButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfKeyPad08(pressed: pressed, enabled: enabled)
	}
	
}

class ModernDialPadNineButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfKeyPad09(pressed: pressed, enabled: enabled)
	}
	
}

class ModernDialPadStarButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfKeyPadStar(pressed: pressed, enabled: enabled)
	}
	
}

class ModernDialPadZeroButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfKeyPad00(pressed: pressed, enabled: enabled)
	}
	
}

class ModernDialPadHashButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfKeyPadHash(pressed: pressed, enabled: enabled)
	}
	
}

class ModernDialPadCallButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfKeyPadGo(pressed: pressed, enabled: enabled)
	}
	
}

class ModernDialPadDeleteButton: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfKeyPadBack(pressed: pressed, enabled: enabled)
	}
	
}
