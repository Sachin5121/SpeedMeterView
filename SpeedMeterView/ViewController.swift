//
//  ViewController.swift
//  SpeedometerView
//
//  Created by Sachin Dumal on 03/12/18.
//  Copyright © 2018 Sachin Dhumal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var speedMeterView: SpeedMeterView!
    private var timer:Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = Timer.scheduledTimer(timeInterval: 0.1,
                                     target: self,
                                     selector: #selector(self.timerAction(teimer:)),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @objc func timerAction(teimer:Timer) {
        
        /// set CGFloat value
        speedMeterView.currentValue = speedMeterView.currentValue + 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

