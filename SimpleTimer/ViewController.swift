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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textTime.text = "02:30"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func button(sender: UIButton) {
        
        //make var change everytime the button is pressed.
        willTimeRun = !willTimeRun
        
        let image: UIImage!
        
        if willTimeRun{
            image = UIImage(named: "on_1x.png")
        }else{
            image = UIImage(named: "off_1x.png")
            
        }
        
        toggleButton.setImage(image, forState: UIControlState.Normal)

        
    }
  
}

