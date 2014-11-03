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
    var mode: ClockMode
    
    required init(coder aDecoder: NSCoder){
        self.clock = Clock()
        self.mode = ClockMode()
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
    
    override func willAnimateRotationToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
        var isLandscape = UIInterfaceOrientationIsLandscape(self.interfaceOrientation)
        var orientationPresenter = OrientationPresenter(vFrame: view.frame, lFrame: timeLabel.frame, isLndScp: isLandscape)
        modeButton.hidden = orientationPresenter.hideButton()
        timeLabel.font = UIFont.boldSystemFontOfSize(orientationPresenter.fontSize())
        timeLabel.frame = orientationPresenter.frame()
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.All.rawValue)
    }
    
    @IBAction func toggleMode(sender: AnyObject) {
        self.mode.toggle()
        self.view.backgroundColor = mode.backgroundColor()
        self.timeLabel.textColor = mode.textColor()
        self.modeButton.setTitle(mode.titleForToggle(), forState: UIControlState.Normal)
    }
    
    @IBOutlet weak var modeButton: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    
}

