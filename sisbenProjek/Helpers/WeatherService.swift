//
//  WeatherService.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 22/12/22.
//

import Foundation
import CoreLocation

http://api.weatherapi.com/v1/forecast.json?key=157643005b8b4bebadd180824221612&q=Jakarta&days=1&aqi=no&alerts=no

public final class WeatherService: NSObject{
    private let locationManager = CLLocationManager()
}

struct APIResponse{
    let name: String
//    let main: APImain
    let weather: [APIWeather]
    
}
struct APIMain: Decodable{
    let temp: Double
}
struct APIWeather: Decodable{
    let description: String
    let iconName: String
    
    enum CodingKeys: String, CodingKey{
        case description
        case iconName = "main"
    }
}
