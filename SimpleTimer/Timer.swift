//
//  Timer.swift
//  SimpleTimer
//
//  Created by Giwrgos Gens on 06/08/15.
//  Copyright © 2015 Giwrgos Gens. All rights reserved.
//

import Foundation

class Timer: NSObject {
    
    var onTickHandler: ((Int)->())?
    
    var onStopHandler: (()->())?
    
    //setting the remaining time
    var timeRemaining = 5
    
    //setting the NSTimer object
    var timer = NSTimer()
    
    //function for starting the timer
    func start(){
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "onTick", userInfo: nil, repeats: true)
        
    }
    
    //function for stopping the timer
    
    func stop(){
        
        timer.invalidate()
        onStopHandler!()
    } 
    
    
    func onTick(){
        
        onTickHandler!(timeRemaining)
        if (timeRemaining > 0){
            timeRemaining = timeRemaining - 1
        }else{
            stop()
        }
        
        print("Timer has started")
    }
    
    func setTickHandler(onTickHandler: ((Int)->())?){
        
        self.onTickHandler = onTickHandler
        
    }
    
    func setStopHandler(onStopHandler: (()->())?){
        
        self.onStopHandler = onStopHandler
        
    }
}