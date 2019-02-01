//
//  Artwork.swift
//  health_plus
//
//  Created by Thet Maung on 1/30/19.
//  Copyright © 2019 Thet Maung. All rights reserved.
//

import Foundation
import MapKit

class Hospital: NSObject, MKAnnotation {
    
    
    let id: Int
    let name: String?
    let address: String
    let phno: String
    let image: String
    var coordinate: CLLocationCoordinate2D
    
    init(id: Int, name: String, address: String, phno: String, image: String, coordinate: CLLocationCoordinate2D) {
        self.id = id
        self.name = name
        self.address = address
        self.phno = phno
        self.image = image
        self.coordinate = coordinate
        super.init()
    }
    
    var subtitle: String? {
        return address
    }
}
