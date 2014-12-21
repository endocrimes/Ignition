//
//  IgnitionColors.swift
//  Ignition
//
//  Created by  Danielle Lancashireon 06/12/2014.
//  Copyright (c) 2014 Rocket Apps. All rights reserved.
//

import UIKit

class Colours {
  class func primaryColor() -> UIColor {
    return fireRedColor()
  }

  class func accentColor() -> UIColor {
    return UIColor.blackColor()
  }

  class func backgroundColor() -> UIColor {
    return UIColor.whiteColor()
  }

  class func fireRedColor() -> UIColor {
    return UIColor(
      red: 255.0,
      green: 0.0,
      blue: 0.0,
      alpha: 1.0
    )
  }
}
