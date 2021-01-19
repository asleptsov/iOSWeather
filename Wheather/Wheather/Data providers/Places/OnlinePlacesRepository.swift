//
//  OnlinePlacesRepository.swift
//  Wheather
//
//  Created by Anton Sleptsov on 19.01.2021.
//

import Foundation

class OnlinePlacesRepository: PlacesRepository {
    
    func loadPlaces(onFinish: ([Place]) -> Void) {
        onFinish([])
    }
    
}
