//
//  UIView+RemoveSubviews.swift
//  Ignition
//
//  Created by Danielle Lancashire on 07/12/2014.
//  Copyright (c) 2014 Rocket Apps. All rights reserved.
//

import UIKit

extension UIView {

  /// Iterate over all of the receivers subviews and remove them from their
  /// superview.
  func removeAllSubviews() {
    for view in subviews {
      if let view = view as? UIView {
        view.removeFromSuperview()
      }
    }
  }

}
