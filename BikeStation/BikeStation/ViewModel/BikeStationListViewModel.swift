//
//  BikeStationListViewModel.swift
//  Main list view controlling by this VM
//
//  Created by Kasun Ranasinghe on 2022-10-15.
//

import Foundation
import Combine



class BikeStationViewModel: ObservableObject {
    
    @Published var bikeStations : [BikeStation] = []
    var cacellables = Set<AnyCancellable>()
    
    init() {
        getBikeStations()
    }
    
    // Loads the list of Stations
    func getBikeStations(){
        
        guard let url = URL(string: getBikeStationListUrl) else {return}
        URLSession.shared.dataTaskPublisher(for: url)
            .receive(on: DispatchQueue.main)
            .tryMap(handleOutput)
            .decode(type: BikeStationList.self, decoder: JSONDecoder())
            .sink { completion in
            } receiveValue: {  bikeStationsloaded in
                print(bikeStationsloaded)
                self.bikeStations = bikeStationsloaded.features
            }.store(in: &cacellables)
        
    }
    
    // Hanndles the http erros and return a genaric error
    func handleOutput(output: URLSession.DataTaskPublisher.Output) throws -> Data{
        guard
            let responce = output.response as? HTTPURLResponse,
            responce.statusCode >= 200 && responce.statusCode < 300 else{
            throw URLError(.badServerResponse)
            
            }
        return output.data
    }

}
