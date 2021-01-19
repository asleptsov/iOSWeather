//
//  MockPlacesRepository.swift
//  Wheather
//
//  Created by Anton Sleptsov on 19.01.2021.
//

import Foundation

class MockPlacesRepository: PlacesRepository {
    
    func loadPlaces(onFinish: ([Place]) -> Void) {
        onFinish([.Petersburg, .Moscow, .Krasnoyarsk])
    }
    
}

private extension Place {
    static let Moscow = Place(id: "1", name: "Moscow",
                              lat: 55.751244, lon: 37.618423)
    
    static let Petersburg = Place(id: "2", name: "Saint-Petersburg",
                              lat: 59.937500, lon: 30.308611)
    
    static let Krasnoyarsk = Place(id: "3", name: "Krasnoyarsk",
                              lat: 56.0184, lon: 92.8672)
}
