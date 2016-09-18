//
//  LocationManager.swift
//  APIFIX
//
//  Created by Harsh Bindra on 2016-09-17.
//  Copyright © 2016 Harsh Bindra. All rights reserved.
//
import CoreLocation
class LocationManager: NSObject{

static let sharedInstance = LocationManager()
    
let locationManager = CLLocationManager()
    func initLocation(){
        findMyLocation()
    }
    
    func findMyLocation() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
        
        // Here we start locating
        locationManager.startUpdatingLocation()
        
    }
 
    
}

extension LocationManager: CLLocationManagerDelegate {
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        
        CLGeocoder().reverseGeocodeLocation(manager.location!, completionHandler: {(placemarks, error)->Void in
            
            if (error != nil) {
                print("Reverse geocoder failed with error" + error!.localizedDescription)
                return
            }
            
            if placemarks!.count > 0 {
                let pm = placemarks![0] as! CLPlacemark
                self.displayLocationInfo(pm)
            } else {
                print("Problem with the data received from geocoder")
            }
        })
        
        for location in locations {
           // print("THIS IS THE LOCATION \(location.coordinate.latitude) and \(location.coordinate.longitude)")
            
            
            let user_lat = String(format: "%f", manager.location!.coordinate.latitude)
            let user_long = String(format: "%f", manager.location!.coordinate.longitude)
            
            //used bottom function to get zipcode
           // print("ZIP CODE : \(APIManager.sharedInstance.getAddressForLatLng(user_lat, longitude: user_long))")
        }
        
        
        // This will stop updating the location.
        locationManager.stopUpdatingLocation()
    }
    
    func displayLocationInfo(placemark: CLPlacemark?) {
        if let containsPlacemark = placemark {
            //stop updating location to save battery life
            locationManager.stopUpdatingLocation()
            let locality = (containsPlacemark.locality != nil) ? containsPlacemark.locality : ""
            let postalCode = (containsPlacemark.postalCode != nil) ? containsPlacemark.postalCode : ""
            let administrativeArea = (containsPlacemark.administrativeArea != nil) ? containsPlacemark.administrativeArea : ""
            let country = (containsPlacemark.country != nil) ? containsPlacemark.country : ""
            print(country)
            print(locality)
            print(postalCode)
            /*
             localityTxtField.text = locality
             postalCodeTxtField.text = postalCode
             aAreaTxtField.text = administrativeArea
             countryTxtField.text = country */
        }
        
    }
}

