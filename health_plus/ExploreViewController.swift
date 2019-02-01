//
//  ExploreViewController.swift
//  health_plus
//
//  Created by Thet Maung on 10/19/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit
import MapKit

class ExploreViewController: UIViewController {
    @IBOutlet weak var map: MKMapView!
    
//    var hospitals: [Hospital] = []
    var hospitals = Array<Hospital>()
    

    func loadInitialData() {
        hospitals.removeAll()
        let url = URL(string: "http://192.168.13.170:8080/hospital")!
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error == nil {
                print("it is called")
                guard let data = data, error == nil else { return }
              
                
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String:Any]
                    let hospitals = json["hospitals"] as? [[String: Any]] ?? []
//                    let validworks = hospitals.flatMap{Hospital(json: $0)}

                    for hospital in hospitals {
//                        self.hospitals.append(hospital is [Hospital])
                        let location = hospital["location"] as? [String: Double]
                        let lat = location?["lat"]!
                        let lng = location?["lng"]!
//                        self.hospitals.append(
//                            Hospital(id: hospital["id"] as! Int,
//                                     name: hospital["name"] as! String,
//                                     address: hospital["address"] as! String,
//                                     phno: hospital["phno"] as! String,
//                                     image: hospital["image"] as! String,
//                                     coordinate: CLLocationCoordinate2D(
//                                        latitude: lat!,
//                                        longitude: lng!
//                                )
//                        ))
                        let artwork = Hospital(id: 1,
                                              name: "King David Kalakaua",
                                              address: "Waikiki Gateway Park",
                                              phno: "09349289302",
                                              image: "zzzzz",
                                              coordinate: CLLocationCoordinate2D(latitude: 16.8661, longitude: 96.1951))
                        
                        self.hospitals.append(artwork)
                    }

                } catch let error as NSError {
                    print(error)
                }
            }
            else {
                print(error ?? "error")
            }
        }
        task.resume()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 11.0, *) {
            map.register(MKMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        } else {
//            map.register(MKAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        }
        self.view.frame = UIScreen.main.bounds
        let initialLocation = CLLocation(latitude: 16.79823, longitude:  96.12897)
        centerMapOnLocation(location: initialLocation)
        

        let artwork = Hospital(id: 1,
                               name: "Waikiki Gateway Park",
                               address: "Victoria Hospital",
                              phno: "09349289302",
                              image: "zzzzz",
                              coordinate: CLLocationCoordinate2D(latitude: 16.877604, longitude: 96.1276763))
        
        let artwork1 = Hospital(id: 1,
                                name: "Waikiki Gateway Park",
                               address: "Bahosi Hospital",
                               phno: "09349289302",
                               image: "zzzzz",
                               coordinate: CLLocationCoordinate2D(latitude: 16.7795469, longitude: 96.1376905))
        
        let artwork2 = Hospital(id: 1,
                                name: "Waikiki Gateway Park",
                                address: "Asia Royal Hospital",
                                phno: "09349289302",
                                image: "zzzzz",
                                coordinate: CLLocationCoordinate2D(latitude: 16.7982361, longitude: 96.12896595))
//        print([artwork])
//        map.addAnnotation(artwork)

//        map.delegate = self
//        loadInitialData()
//        print(hospitals)
        map.addAnnotations([artwork, artwork1, artwork2])
    }
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,
                                                  latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        map.setRegion(coordinateRegion, animated: true)
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    
}
