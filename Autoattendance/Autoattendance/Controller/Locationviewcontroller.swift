//
//  Locationviewcontroller.swift
//  Autoattendance
//
//  Created by Maaz Asim Taimuri on 3/31/20.
//  Copyright © 2020 Maaz Asim Taimuri. All rights reserved.
//

import UIKit
import CoreLocation


class Locationviewcontroller: UIViewController, CLLocationManagerDelegate{
    
    var locationManager: CLLocationManager = CLLocationManager()
    var id  :String = ""
    var latitude :String = ""
    var longitude :String = ""
    var altitude :String = ""
    @IBOutlet weak var university: UIImageView!
    @IBOutlet weak var teachername: UITextField!
    @IBOutlet weak var CLASSROOM: UITextField!
    @IBOutlet weak var startclass: UIButton!
    @IBAction func locate(_ sender: Any) {
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        print(longitude)
          id = CLASSROOM.text!
        Networkservice.shared.upteachercood(latitude: latitude, longitude: longitude, altitude: altitude,id: id)


    }
    @IBAction func inputclass(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
         print(longitude)
        
        teachername.layer.cornerRadius = 10.0
               teachername.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
               teachername.textAlignment = .center
               teachername.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
               teachername.attributedPlaceholder = NSAttributedString(string: "YOUR NAME?",
               attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        university.layer.cornerRadius = 10.0
        CLASSROOM.layer.cornerRadius = 10.0
        CLASSROOM.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        CLASSROOM.textAlignment = .center
        CLASSROOM.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        CLASSROOM.attributedPlaceholder = NSAttributedString(string: "ENTER SECTION",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        startclass.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        startclass.layer.cornerRadius = 20.0
        startclass.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
      
        
        
        
       
        
        
        
    

}
     func locationManager(_ manager: CLLocationManager,
                                 didUpdateLocations locations: [CLLocation]) {
        
        let latestLocation: CLLocation = locations[locations.count - 1]
        
        latitude = String(format: "%.8f",
                               latestLocation.coordinate.latitude)
        longitude = String(format: "%.8f",
                                latestLocation.coordinate.longitude)
        altitude = String(format: "%.8f",
                               latestLocation.altitude)
        
        print (longitude)
        print (altitude)
        print (latitude)


        
        
    }
    
    
}



