//
//  ClockMode.swift
//  HelloTime
//
//  Created by Ethan Vizitei on 11/2/14.
//  Copyright (c) 2014 Ethan Vizitei. All rights reserved.
//

import Foundation
import UIKit

public class ClockMode {
    var isDay:Bool
    
    public init(){
        self.isDay = true
    }
    
    public func toggle() -> Void{
        self.isDay = !self.isDay
    }
    
    public func backgroundColor() -> UIColor {
        if(isDay){
            return UIColor.whiteColor()
        }else{
            return UIColor.blackColor()
        }
    }
    
    public func textColor() -> UIColor {
        if(isDay){
            return UIColor.blackColor()
        }else{
            return UIColor.whiteColor()
        }
    }
    
    public func titleForToggle() -> String {
        if(isDay){
            return "Night"
        } else {
            return "Day"
        }
    }
}
