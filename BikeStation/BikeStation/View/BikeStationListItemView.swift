//
//  BikeStationListItemView.swift
//  BikeStation cell item
//
//  Created by Kasun Ranasinghe on 2022-10-15.
//

import SwiftUI

struct BikeStationListItemView: View {
    
    @ObservedObject var bikeStationsListItemVM : BikeStationListItemViewModel
    
    init(bikeStation:BikeStation){
        self.bikeStationsListItemVM = BikeStationListItemViewModel(bikeStation: bikeStation)
    }
    
    var body: some View {
        VStack{
            HStack{
                Text(bikeStationsListItemVM.bikeStation.id).font(.headline).foregroundColor(.black)
                Text(bikeStationsListItemVM.bikeStation.properties.label).font(.headline).foregroundColor(.black)
            }.padding(3)
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
           
        }.cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.sRGB, red: 150/255, green: 150/255,blue: 150/255,opacity: 0.1),lineWidth: 1).shadow(color: .gray, radius: 12, x: -1, y: -1))
            .padding (.top, 5)
         
    }
}

//struct BikeStationListItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        BikeStationListItemView(bikeStation: B)
//    }
//}
