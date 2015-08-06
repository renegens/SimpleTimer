//
//  ViewController.swift
//  SimpleTimer
//
//  Created by Giwrgos Gens on 04/08/15.
//  Copyright © 2015 Giwrgos Gens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textTime: UILabel!
    @IBOutlet weak var toggleButton: UIButton!
    
    //declaring variable for running time
    var willTimeRun = false
    
    //getting the timer class
    
    var timer = Timer()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        timer.setTickHandler(onUpdateUI);
        
        timer.setStopHandler(onTimerStopped);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func button(sender: UIButton) {
        
        //make var change everytime the button is pressed.
        willTimeRun = !willTimeRun
        
        let image: UIImage!
        
        //Check if running and assign the apropriate image
        
        if willTimeRun{
            image = UIImage(named: "on_1x.png")
            
            //setting the nstimer object if true and running.
            timer.start()
            
        }else{
            image = UIImage(named: "off_1x.png")
            //stopping the timer
            timer.stop()
            
        }
        
        toggleButton.setImage(image, forState: UIControlState.Normal)

        
    }
    
    func onUpdateUI(timeRemaining: Int){
        print("onUpdateUI called yay!")
        
        textTime.text = "\(timeRemaining)"
    }
    
    func onTimerStopped(){
        let image: UIImage!
        image = UIImage(named: "off_1x.png")
        textTime.text = "00:00"
        willTimeRun = false
        toggleButton.setImage(image, forState: UIControlState.Normal)
        
    }
    
    func takeInput(){
        
        //setting the alert controller
        
        let alertController = UIAlertController(title: "Timer", message: "Countdown from", preferredStyle: UIAlertControllerStyle.Alert)
        
        //defining the two buttons for the alert style
        let actionOk = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: onActionOk)
        let actionCancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: onActionCancel)
        
        //adding text to alert
        alertController.addTextFieldWithConfigurationHandler(textFieldCOnfigurationHandler)
        
        //adding buttons to UI alert controller
        
        alertController.addAction(actionOk)
        alertController.addAction(actionCancel)
        
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    func textFieldCOnfigurationHandler(textField: UITextField){
        
        textField.placeholder = "03:34"
        
    }
    
    func onActionOk(action: UIAlertAction){
        
    }
    
    func onActionCancel(action: UIAlertAction){
        
    }
    
  
}

