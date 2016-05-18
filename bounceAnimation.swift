//
//
//  Subject:    Animated label UILabel - iOS Swift Xcode Version 7.3.1
//  Fork:       https://github.com/tborges/Using-Maps-Swift-in-Xcode-Version-7.3.1-/blob/master/bounceAnimation.swift
//  Video:      https://www.youtube.com/watch?v=DSJhkHT98YM
//
//  bouceAnimation.swift
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
