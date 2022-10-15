//
//  BikeStationDetailView.swift
//  BikeStation Detail view with map
//
//  Created by Kasun Ranasinghe on 2022-10-15.
//

import SwiftUI
import MapKit

struct BikeStationDetailView: View {
    
    @ObservedObject var bikeStationsDetailVM : BikeStationDetailViewModel
    
    init(bikeStation:BikeStation){
        self.bikeStationsDetailVM = BikeStationDetailViewModel(bikeStation: bikeStation)
        
    }
    
    var body: some View {
        VStack{
            //map view for location Stations
            Map(coordinateRegion:$bikeStationsDetailVM.region,annotationItems:bikeStationsDetailVM.location){
                item in
                MapAnnotation(coordinate:item.coordinate){
                    Image("bike")
                    Text (bikeStationsDetailVM.bikeStation.properties.label)
                }
            }
        }
        HStack(spacing:20){
            BikeStationListItemView(bikeStation: bikeStationsDetailVM.bikeStation)
        }
        Spacer(minLength: 20)
    }
    
    
    
}

//struct BikeStationDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        BikeStationDetailView(bikeStation: BikeStation.self)
//    }
//}
