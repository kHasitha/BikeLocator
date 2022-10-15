//
//  BileStationListItemViewModel.swift
//  BikeStation
//
//  Created by Kasun Ranasinghe on 2022-10-16.
//

import Foundation

class BikeStationListItemViewModel: ObservableObject {
    var bikeStation : BikeStation
    lazy var distace : String = ""
    
    
    init(bikeStation:BikeStation){
        self.bikeStation = bikeStation
        distace = getDistance()
    }
    
    // genarate a destance for location
    // this method just moking , needs to develop a logic using the user location
    func getDistance() -> String{
        return "300m"
    }
    
}
