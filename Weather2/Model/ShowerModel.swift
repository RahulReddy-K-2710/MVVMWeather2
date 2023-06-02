//
//  WeatherModel.swift
//  Weather2
//
/*
 1.Create Models use in WeatherView MOdel.
 2.Codable models to parse json data.
 */
//  Created by Roja on 25/11/22.
// b50145636ae1fc81412c626cc75d8094 API-Key.
//

import Foundation

/*
 Model to use in weather View Model
 */
 
struct ShowerModel {
    let city: String?
    let temp: Double?
    let desc: String?
    let unit: String?
    let icon: String?
}
/*
 Codable models to parse json data.
 */

struct ShowerData: Codable {
    let data: [ShowerDataModel]?
    
}

struct ShowerDataModel: Codable {
    let app_temp: Double?
    let city_name: String?
    let weather: Shower?
}

struct Shower: Codable {
    let icon: String?
    let description: String?
}
