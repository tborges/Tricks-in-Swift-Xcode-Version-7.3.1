//
//  vehicle.swift
//  GPS Tracker
//
//  Created by T.B.B. on 5/13/16.
//  Copyright © 2016 MrBorges. All rights reserved.
//

import UIKit

class vehicle: UIViewController {

    @IBOutlet var Btn: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Btn.center.x = self.view.frame.width + 30
        
        UIView.animateWithDuration(1.0, delay: 0,
        usingSpringWithDamping: 1.0,
        initialSpringVelocity: 5, options: [], //options: nil
        animations: ({
            
            self.Btn.center.x = self.view.frame.width / 2
            
        }), completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
