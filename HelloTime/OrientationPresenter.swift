//
//  OrientationPresenter.swift
//  HelloTime
//
//  Created by Ethan Vizitei on 11/2/14.
//  Copyright (c) 2014 Ethan Vizitei. All rights reserved.
//

import Foundation
import UIKit

public class OrientationPresenter {
    var viewFrame: CGRect
    var labelFrame: CGRect
    var isLandscape: Bool

    public init(vFrame: CGRect, lFrame: CGRect, isLndScp: Bool){
        self.viewFrame = vFrame
        self.labelFrame = lFrame
        self.isLandscape = isLndScp
    }

    public func hideButton() -> Bool{
        return isLandscape
    }

    public func fontSize() -> CGFloat{
        if(isLandscape){
            return CGFloat(40.0)
        } else {
            return CGFloat(30.0)
        }
    }

    public func frame() -> CGRect{
        var newFrame = labelFrame
        var viewHeight = viewFrame.size.height
        var viewWidth = viewFrame.size.width

        if(isLandscape){
            newFrame.origin.y = (viewHeight / 2) - (labelFrame.size.height / 2) - 50
            newFrame.origin.x = (viewWidth / 2) - (labelFrame.size.width / 2)
            newFrame.size.width = viewHeight
        } else {
            newFrame.origin.y = (viewHeight / 2) - (labelFrame.size.height / 2)
            newFrame.origin.x = (viewWidth / 2) - (labelFrame.size.width / 2)
            newFrame.size.width = viewWidth
        }

        return newFrame
    }

}
