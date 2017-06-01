//
//  mainMapViewController.swift
//  finalProject
//
//  Created by Mario Alberto Guillén Rivas on 22/05/17.
//  Copyright © 2017 Mario Alberto Guillén Rivas. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class mainMapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    var locationManager = CLLocationManager()
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest // GPS
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        //Mostrar pin
        let pin = MKPointAnnotation()
        let pinLocation = CLLocationCoordinate2D(latitude: 28.681251, longitude: -106.108140)
        pin.coordinate = pinLocation
        pin.title = "Juan Escutia"
        map.addAnnotation(pin)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation: CLLocation = locations[0]
        print(userLocation)
        
        map.showsUserLocation = true
        map.userTrackingMode = .None
        map.rotateEnabled = false
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
