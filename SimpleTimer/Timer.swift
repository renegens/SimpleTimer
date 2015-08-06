//
//  Timer.swift
//  SimpleTimer
//
//  Created by Giwrgos Gens on 06/08/15.
//  Copyright © 2015 Giwrgos Gens. All rights reserved.
//

import Foundation

class Timer: NSObject {
    //setting the remaining time
    var timeRemaining = 0
    
    //setting the NSTimer object
    var timer = NSTimer()
    
    //function for starting the timer
    func start(){
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "onTick", userInfo: nil, repeats: true)
        
    }
    
    //function for stopping the timer
    
    func stop(){
        
        timer.invalidate()
    } 
    
    //testing method
    func onTick(){
        
        print("Timer has started")
    }
}