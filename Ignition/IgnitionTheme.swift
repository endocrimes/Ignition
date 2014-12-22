//
//  IgnitionTheme.swift
//  Ignition
//
//  Created by Danielle Lancashire on 21/12/2014.
//  Copyright (c) 2014 Rocket Apps. All rights reserved.
//

import UIKit

public class IgnitionTheme {
  public class func applyTheme() {
    UIBarButtonItemProxy.applyTheme()
    UINavigationBarProxy.applyTheme()
    IgnitionButtonProxy.applyTheme()
  }

  private class UIBarButtonItemProxy {
    class func appearance() -> UIBarButtonItem {
      return UIBarButtonItem.appearance()
    }

    class func applyTheme() {
      appearance().tintColor = Colours.primaryColor()
    }
  }

  private class UINavigationBarProxy {
    class func appearance() -> UINavigationBar {
      return UINavigationBar.appearance()
    }

    class func applyTheme() {
      appearance().tintColor = Colours.primaryColor()
    }
  }

  private class IgnitionButtonProxy {
    class func appearance() -> IgnitionButton {
      return IgnitionButton.appearance()
    }

    class func applyTheme() {
      appearance().tintColor = Colours.primaryColor()
      appearance().layer.borderColor = Colours.primaryColor().CGColor
    }
  }

}