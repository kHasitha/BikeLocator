//
//  BikeStation.swift
//  BikeStation
//
//  Created by Kasun Ranasinghe on 2022-10-15.
//

import Foundation

// Struct for Bike Station Details
// MARK: - Feature
struct BikeStation: Identifiable, Codable {
    let geometry: Geometry
    let id: String
    let type: String
    let properties: Properties
}

// MARK: - Geometry ,Location data for stations
struct Geometry: Codable {
    let coordinates: [Double]
    let type: GeometryType
}

enum GeometryType: String, Codable {
    case point = "Point"
}

// MARK: - FeatureProperties
struct Properties: Codable {
    let freeRacks, bikes, label,updated, bikeRacks: String

    enum CodingKeys: String, CodingKey {
        case freeRacks = "free_racks"
        case bikes, label ,updated
        case bikeRacks = "bike_racks"

    }
}


// Creted to Handle Full JSOn responce
// MARK: - BikeStationList
struct BikeStationList: Codable {
    let features: [BikeStation]
    let crs: CRS
    let type: String
}

// MARK: - CRS
struct CRS: Codable {
    let type: String
    let properties: CRSProperties
}

// MARK: - CRSProperties
struct CRSProperties: Codable {
    let code: String
}



