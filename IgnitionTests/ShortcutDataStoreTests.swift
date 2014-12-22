//
//  ShortcutDataStoreTests.swift
//  Ignition
//
//  Created by Danielle Lancashire on 21/12/2014.
//  Copyright (c) 2014 Rocket Apps. All rights reserved.
//

import UIKit
import XCTest
import Ignition

class ShortcutDataStoreTests: XCTestCase {
  var sut: ShortcutDataStore!

  override func setUp() {
    super.setUp()

    sut = ShortcutDataStore()
  }

  override func tearDown() {
    super.tearDown()
  }

  func testDataStoreIsNotNil() {
    XCTAssertNotNil(sut, "The data store cannot be nil")
  }

  func testDataStoreReturnsEmptyArrayForAllItems() {
    XCTAssertEqual(sut.allItems().count, 0)
  }
}
