//
//  Landmark.swift
//  Navigator
//
//  Created by Pradhumna Pancholi on 2019-06-19.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import Foundation
import CoreLocation

struct Landmark: Hashable, Codable{
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var category: Category
    var locationsCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    func image(forSize size: Int) -> Image{
        ImageStore.shared.image(name: imageName, size: size)
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lake = "Lake"
        case river = "River"
    }
}

//for type coordinates//
struct Coordinates: Codable, Hashable{
    var latitude: Double
    var longitude: Double
}
