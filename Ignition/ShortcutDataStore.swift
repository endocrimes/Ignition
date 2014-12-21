//
//  ShortcutDataStore.swift
//  Ignition
//
//  Created by  Danielle Lancashireon 07/12/2014.
//  Copyright (c) 2014 Rocket Apps. All rights reserved.
//

import Foundation


public class Shortcut: Equatable {
}

public func == (lhs: Shortcut, rhs: Shortcut) -> Bool {
  return false
}


public class ShortcutDataStore {
  private var items: [Shortcut]?

  public init() {
  }

  public func allItems() -> [Shortcut] {
    return [Shortcut]()
  }

  public func itemsByApplyingFilter(filterClosure: (Shortcut) -> Bool) -> [Shortcut] {
    return allItems().filter(filterClosure)
  }

  public func addItem(shortcut: Shortcut) {
    items?.append(shortcut)
  }

  public func removeItem(shortcut: Shortcut) {
    items = items?.filter({ return $0 != shortcut })
  }
}