//
//  AppAssembler.swift
//  Wheather
//
//  Created by Anton Sleptsov on 13.01.2021.
//

import Foundation

class AppAssembler {
    
    private (set) var placesRepository: PlacesRepository!
    private (set) var weatherRepository: WeatherRepository!
    
    private let onlinePlacesRepository: PlacesRepository
    private let mockPlacesRepository: PlacesRepository
    private let onlineWeatherRepository: WeatherRepository
    private let mockWeatherRepository: WeatherRepository
    
    init(onlinePlacesRepository: PlacesRepository,
         mockPlacesRepository: PlacesRepository,
         onlineWeatherRepository: WeatherRepository,
         mockWeatherRepository: WeatherRepository) {
        self.onlinePlacesRepository = onlinePlacesRepository
        self.mockPlacesRepository = mockPlacesRepository
        self.onlineWeatherRepository = onlineWeatherRepository
        self.mockWeatherRepository = mockWeatherRepository
    }
    
    func assemble(with mode: AssembleMode) {
        switch mode {
        case .mockAll:
            assembleForMockAll()
        case .mockPlaces:
            assembleForMockPlaces()
        case .online:
            assembleForOnline()
        }
    }
    
    private func assembleForMockAll() {
        placesRepository = mockPlacesRepository
        weatherRepository = mockWeatherRepository
    }
    
    private func assembleForOnline() {
        placesRepository = onlinePlacesRepository
        weatherRepository = onlineWeatherRepository
    }
    
    private func assembleForMockPlaces() {
        placesRepository = mockPlacesRepository
        weatherRepository = onlineWeatherRepository
    }
    
}
