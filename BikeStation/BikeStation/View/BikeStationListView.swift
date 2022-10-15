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
                    VStack (spacing:15)
                    {
                        BikeStationListItemView(bikeStation: station).frame(width: 400, height: 150, alignment: .center)
                    }
                })
              }
            }
          }
        }
    }
}

struct BikeStationListView_Previews: PreviewProvider {
    static var previews: some View {
        BikeStationListView()
    }
}
