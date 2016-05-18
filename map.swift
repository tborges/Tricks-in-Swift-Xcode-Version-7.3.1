//
//  map.swift
//  Using Maps Swift in iOS Swift Xcode Version 7.3.1
//  Subject:    How to create a marker or pin on the map.
//  Fork:       https://github.com/tborges/Using-Maps-Swift-in-Xcode-Version-7.3.1-/blob/master/map.swift
//  Video:      https://www.youtube.com/watch?v=Idzn65L4p-A
//
//  Created by T.B.B. on 5/10/16.
//  Copyright © 2016 MrBorges. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class map: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate, UITextFieldDelegate {
    
    // Map
    @IBOutlet weak var mapPage: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // do Nay additional setup after loading the view typically from a nib.
        
        let location = CLLocationCoordinate2DMake(48.88182, 2.43952)
        
        let span = MKCoordinateSpanMake(0.02, 0.02)
        
        let region = MKCoordinateRegionMake(location, span)
        
        mapPage.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        //annotation.setCoordinate(location)
        annotation.coordinate = location
        annotation.title = "Pizza Pistorante"
        annotation.subtitle = "Luna Rossa"
        
        mapPage.addAnnotation(annotation)
        
        //Showing the device location on the map
        self.mapPage.showsUserLocation = true;
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    
    
}
