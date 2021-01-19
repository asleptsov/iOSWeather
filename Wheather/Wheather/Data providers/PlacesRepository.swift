//
//  PlacesRepository.swift
//  Wheather
//
//  Created by Anton Sleptsov on 19.01.2021.
//

import Foundation

protocol PlacesRepository: AnyObject {
    
    func loadPlaces(onFinish: ([Place]) -> Void)
    
}
