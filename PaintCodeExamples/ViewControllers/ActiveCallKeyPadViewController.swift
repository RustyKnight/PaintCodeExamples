//
//  ActiveCallKeyPad.swift
//  PaintCodeExamples
//
//  Created by Shane Whitehead on 25/8/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import Foundation
import UIKit

class ActiveCallKeyPadViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
}

class ActiveCall01: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfActiveCallButton01(pressed2: pressed)
	}
	
}

class ActiveCall02: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfActiveCallButton02(pressed2: pressed)
	}
	
}

class ActiveCall03: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfActiveCallButton03(pressed2: pressed)
	}
	
}

class ActiveCall04: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfActiveCallButton04(pressed2: pressed)
	}
	
}

class ActiveCall05: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfActiveCallButton05(pressed2: pressed)
	}
	
}

class ActiveCall06: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfActiveCallButton06(pressed2: pressed)
	}
	
}

class ActiveCall07: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfActiveCallButton07(pressed2: pressed)
	}
	
}

class ActiveCall08: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfActiveCallButton08(pressed2: pressed)
	}
	
}

class ActiveCall09: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfActiveCallButton09(pressed2: pressed)
	}
	
}

class ActiveCallStar: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfActiveCallButtonStar(pressed2: pressed)
	}
	
}

class ActiveCall00: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfActiveCallButton00(pressed2: pressed)
	}
	
}

class ActiveCallHash: BasePadButton {
	
	override func image(pressed: Bool = false, enabled: Bool = true) -> UIImage? {
		return Examples.imageOfActiveCallButtonHash(pressed2: pressed)
	}
	
}
