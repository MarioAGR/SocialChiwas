//
//  mainMapViewController.swift
//  finalProject
//
//  Created by Mario Alberto Guillén Rivas on 22/05/17.
//  Copyright © 2017 Mario Alberto Guillén Rivas. All rights reserved.
//

import UIKit
/*import GoogleMaps*/
import GooglePlacePicker

class mainMapViewController: UIViewController {
    
    /*var map:GMSMapView!
    var longitudes:[Double]!
    var latitudes:[Double]!
    var architectNames:[String]!
    var completedYear:[String]!
    var restaurantNames:[String]!*/
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        /*latitudes = [48.8566667,41.8954656,51.5001524]
        longitudes = [2.3509871,12.4823243,-0.1262362]
        architectNames = ["Stephen Sauvestre","Bonanno Pisano","Augustus Pugin"]
        completedYear = ["1889","1372","1859"]
        restaurantNames = ["Wendys", "Wingstop Sendero", "Gorditas Doña Tota"]
        
        self.map = GMSMapView(frame: self.view.frame)
        self.view.addSubview(self.map)
        self.map.delegate = self*/

    }
    
    /*override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.cameraWithLatitude(28.7088011,
                                                          longitude: -106.1047968, zoom: 13)
        var mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.delegate = self
        self.view = mapView
        
        // Creates a marker in the center of the map.
        let marker = generateMarker("Wendys", snippet: "Lugar de comida", latitude: 28.7224656, longitude: -106.110728,map:mapView)
        //generateMarker("Chihuahua", snippet: "Lugar de comida", latitude: 28.7234656, longitude: -106.110828,map:mapView)
    }*/
    
    //Cuando va a aparecer la vista, se realiza una llamada a GooglePickerPlace
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let config = GMSPlacePickerConfig(viewport: nil)
        let placePicker = GMSPlacePicker(config: config)
        placePicker.pickPlaceWithCallback({ (place, error) -> Void in
            if let error = error {
                print("Pick Place error: \(error.localizedDescription)")
                return
            }
            
            guard let place = place else {
                print("No place selected")
                return
            }
            
            print("Place name \(place.name)")
            print("Place address \(place.formattedAddress)")
            print("Place attributions \(place.attributions)")
        })
    }

    /*func generateMarker(title:String, snippet:String,latitude: Double,longitude: Double,map:GMSMapView) -> GMSMarker {
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        marker.title = title
        marker.snippet = snippet
        marker.map = map
        marker.icon = UIImage(named: "ico_rating")
        //marker.icon = GMSMarker.markerImageWithColor(UIColor.blackColor())
        marker.accessibilityLabel = "1"
        return marker
    }*/

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*func mapView(mapView: GMSMapView!, markerInfoWindow marker: GMSMarker!) -> UIView! {
        // Get a reference for the custom overlay
        let index:Int! = Int(marker.accessibilityLabel!)
        let customInfoWindow = NSBundle.mainBundle().loadNibNamed("CustomInfoWindow", owner: self, options: nil)[0] as! CustomInfoWindow
        
        customInfoWindow.architectLbl.text = restaurantNames[index]
        customInfoWindow.completedYearLbl.text = "Lo que sea"
        return customInfoWindow
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
