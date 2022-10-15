//
//  BileStationDetailViewModel.swift
//  Procees the data for details view/Map
//
//  Created by Kasun Ranasinghe on 2022-10-15.
//

import Foundation
import MapKit
import CloudKit

class BikeStationDetailViewModel: ObservableObject {
    
    var bikeStation : BikeStation
    var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var location : [AnnotatedItem]

    
    init(bikeStation:BikeStation){
        self.bikeStation = bikeStation
        //Create a region to load map using stations Geo data
        region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: bikeStation.geometry.coordinates[1], longitude: bikeStation.geometry.coordinates[0]), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        // Genarate real annotations for selected station.
        let annotation = AnnotatedItem(name:bikeStation.properties.label ,coordinate:CLLocationCoordinate2D(latitude:bikeStation.geometry.coordinates[1], longitude: bikeStation.geometry.coordinates[0]))
        location = [annotation]
        
    }
    
    
    
}
