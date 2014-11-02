//
//  Clock.swift
//  HelloTime
//
//  Created by Ethan Vizitei on 11/2/14.
//  Copyright (c) 2014 Ethan Vizitei. All rights reserved.
//

import Foundation

public class Clock {
    var formatter: NSDateFormatter
    
    init(){
        self.formatter = NSDateFormatter()
        formatter.dateFormat = "h:mm:ss a"
    }
    
    public func showTime() -> String{
        let date = NSDate()
        return formatter.stringFromDate(date)
    }
}