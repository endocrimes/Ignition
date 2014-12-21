//
//  NewShortcutControllerBackgroundView.swift
//  Ignition
//
//  Created by  Danielle Lancashireon 07/12/2014.
//  Copyright (c) 2014 Rocket Apps. All rights reserved.
//

import UIKit

class NewShortcutControllerBackgroundView: UIView {
  var backingView: UIView?
  var blurView: UIVisualEffectView?

  func configureWithBackingView(view: UIView) {
    backingView = view
    blurView = blurView ?? UIVisualEffectView(effect: UIBlurEffect(style: .Dark))

    view.removeAllSubviews()

    view.addSubview(backingView!)
    view.addSubview(blurView!)
  }
}
