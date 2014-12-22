//
//  IgnitionButtons.swift
//  Ignition
//
//  Created by Danielle Lancashire on 06/12/2014.
//  Copyright (c) 2014 Rocket Apps. All rights reserved.
//

import UIKit

class IgnitionButton: UIButton {
  override init() {
    super.init()
    setup()
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }

  required init(coder aDecoder: NSCoder) {
    super.init()
    setup()
  }

  func setup() {
    titleEdgeInsets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
    setTitleColor(Colours.primaryColor(), forState: .Normal)
  }
}

class BouncyButton: IgnitionButton {
  override func setup() {
    super.setup()
  }
}

class BorderedButton: BouncyButton {
  override func setup() {
    super.setup()
    layer.borderWidth = 1.0
  }
}