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
    ensureItemsSetup()

    return items!
  }

  public func itemsByApplyingFilter(filterClosure: (Shortcut) -> Bool) -> [Shortcut] {
    ensureItemsSetup()

    return items!.filter(filterClosure)
  }

  public func addItem(shortcut: Shortcut) {
    ensureItemsSetup()

    items?.append(shortcut)
  }

  public func removeItem(shortcut: Shortcut) {
    items = allItems().filter({ return $0 != shortcut })
  }

  public func save() {

  }

  public func load() {

  }

  private func ensureItemsSetup() {
    switch items {
    case .None:
      load()
    case .Some(_):
      println("Items are already loaded")
    }
  }
}