//
//  AnnotatedItem.swift
//  BikeStation
//
//  Created by Kasun Ranasinghe on 2022-10-16.
//

import Foundation
import MapKit

// Details for map Annotation 
struct AnnotatedItem: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}
