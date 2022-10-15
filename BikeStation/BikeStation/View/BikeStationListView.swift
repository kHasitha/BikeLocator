//
//  BikeStationListView.swift
//  Main List view
//
//  Created by Kasun Ranasinghe on 2022-10-15.
//

import SwiftUI

struct BikeStationListView: View {
    
    @StateObject var bikeStationsVM = BikeStationViewModel()
    
    var body: some View {
        NavigationView{
          
          ScrollView{
            LazyVStack{
               ForEach(bikeStationsVM.bikeStations){ station in
                NavigationLink(destination: BikeStationDetailView(bikeStation: station), label: {
                    VStack ()
                    {
                        BikeStationListItemView(bikeStation: station)
                    }
                })
              }
            }
          }.navigationTitle(Text("Bike Stations"))
        }
    }
}

struct BikeStationListView_Previews: PreviewProvider {
    static var previews: some View {
        BikeStationListView()
    }
}
