//
//  BikeStationDetailInfoView.swift
//  BikeStation
//
//  Created by Kasun Ranasinghe on 2022-10-16.
//

import SwiftUI

struct BikeStationDetailInfoView: View {
    @ObservedObject var bikeStationsListItemVM : BikeStationListItemViewModel
    
    init(bikeStation:BikeStation){
        self.bikeStationsListItemVM = BikeStationListItemViewModel(bikeStation: bikeStation)
    }
    
    var body: some View {
        VStack{
            HStack{
                Text(bikeStationsListItemVM.bikeStation.id).font(.headline).foregroundColor(.black)
                Text(bikeStationsListItemVM.bikeStation.properties.label).font(.headline).foregroundColor(.black)
            }
            HStack{
                Text(bikeStationsListItemVM.distace)
                    .font(.subheadline).foregroundColor(.gray)
                Text( " - Bike Station")
                    .font(.subheadline).foregroundColor(.gray)
            }
            
            HStack(spacing:30){
                VStack{
                    Image.init("bike")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30, alignment: .center)
                    Text("Available Bikes")
                        .font(.subheadline
                        ).foregroundColor(.black)
                    Text(bikeStationsListItemVM.bikeStation.properties.bikes).font(
                        .system(size: 34)
                        .weight(.bold)
                    ).foregroundColor(.green)
                    
                }
                VStack{
                    Image.init("lock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30, alignment: .center)
                    Text("Available Places").font(.subheadline).foregroundColor(.black)
                    Text(bikeStationsListItemVM.bikeStation.properties.freeRacks).font(
                        .system(size: 34)
                        .weight(.bold)
                    ).foregroundColor(.black)
                    
                }
            }
           
        }
         
    }
}

//struct BikeStationDetailInfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        BikeStationDetailInfoView()
//    }
//}
