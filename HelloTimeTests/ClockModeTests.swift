//
//  ClockModeTests.swift
//  HelloTime
//
//  Created by Ethan Vizitei on 11/2/14.
//  Copyright (c) 2014 Ethan Vizitei. All rights reserved.
//

import Foundation
import XCTest
import HelloTime
import UIKit

class ClockModeTests : XCTestCase {
    let mode = ClockMode()

    func testDefaultMode() {
        assert(mode.titleForToggle() == "Night", "defaults to day mode")
    }

    func testTogglingMode() {
        mode.toggle()
        assert(mode.titleForToggle() == "Day", "should toggle back and forth")
        mode.toggle()
        assert(mode.titleForToggle() == "Night", "should toggle back and forth")
        mode.toggle()
        assert(mode.titleForToggle() == "Day", "should toggle back and forth")
    }

    func testTogglingBackgroundColor(){
        assert(mode.backgroundColor() == UIColor.whiteColor(), "should default background to white")
        mode.toggle()
        assert(mode.backgroundColor() == UIColor.blackColor(), "should toggle background to black")
    }

    func testTogglingTextColor(){
        assert(mode.textColor() == UIColor.blackColor(), "should default text to black")
        mode.toggle()
        assert(mode.textColor() == UIColor.whiteColor(), "should toggle text to white")
    }
}
