//
//  OrientationPresenterTests.swift
//  HelloTime
//
//  Created by Ethan Vizitei on 11/2/14.
//  Copyright (c) 2014 Ethan Vizitei. All rights reserved.
//

import Foundation
import XCTest
import UIKit
import HelloTime

class OrientationPresenterTests : XCTestCase {
    func testHideButtonForLandscape(){
        var pres = OrientationPresenter(vFrame: CGRect(), lFrame: CGRect(),
                                         isLndScp: true)
        assert(pres.hideButton() == true, "should hide on landscape")
        pres = OrientationPresenter(vFrame: CGRect(), lFrame: CGRect(),
                                         isLndScp: false)
        assert(pres.hideButton() == false, "should show on portrait")
    }
}
