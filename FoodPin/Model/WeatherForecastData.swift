//
//  WeatherForecastData.swift
//  WeatherForecast
//
//  Created by 楊智崴 on 2021/1/7.
//

import Foundation

struct WeatherForecastData: Codable {
    var name: String
    var coord: Coord
    var main: Main
    var weather: [Weather]
}

struct Coord: Codable {
    var lon: Double
    var lat: Double
}

struct Main: Codable {
    var temp: Double
    var humidity: Int
    var temp_min: Double
    var temp_max: Double
}

struct Weather: Codable {
    var main: String
    var description: String
    var icon: String
}
