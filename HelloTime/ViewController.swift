//
//  ViewController.swift
//  HelloTime
//
//  Created by Ethan Vizitei on 11/1/14.
//  Copyright (c) 2014 Ethan Vizitei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var clock: Clock
    
    required init(coder aDecoder: NSCoder){
        self.clock = Clock()
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.checkTime()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func checkTime() {
        timeLabel.text = clock.showTime()
        NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("checkTime"), userInfo: nil, repeats: false)
    }
    
    @IBOutlet weak var timeLabel: UILabel!
    
}

