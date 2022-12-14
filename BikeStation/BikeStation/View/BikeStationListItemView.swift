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
            Spacer()
            HStack{
                Text(bikeStationsListItemVM.bikeStation.id).font(.headline.weight(.bold)).foregroundColor(.black)
                Text(bikeStationsListItemVM.bikeStation.properties.label).font(.headline).foregroundColor(.black)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
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
                        .system(size: 40)
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
                        .system(size: 40)
                        .weight(.bold)
                    ).foregroundColor(.black)
                    
                }
            }
           
        }.cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.sRGB, red: 150/255, green: 150/255,blue: 150/255,opacity: 0.1),lineWidth: 1).shadow(color: .black, radius: 12, x: -1, y: -3))
         
    }
}

//struct BikeStationListItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        BikeStationListItemView(bikeStation: B)
//    }
//}
