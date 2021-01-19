//
//  MockWeatherRepository.swift
//  Wheather
//
//  Created by Anton Sleptsov on 19.01.2021.
//

import Foundation

class MockWeatherRepository: WeatherRepository {
    
    func fetchWeather(lat: Double,
                      lon: Double,
                      onFinish: ((WeatherSnapshot?) -> Void)) {
        
    }
    
}
