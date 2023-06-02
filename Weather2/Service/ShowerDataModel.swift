//
//  WeatherDataModel.swift
//  Weather2
//
//  Created by Roja on 25/11/22.
//
/* Two functions
fetchWeatherData
 - Create a network manager object,
 - supply the url to network manager using init.
 - call network manager fetchData
 - Pass the downloaded data to the parseWeatherData function
 - get the Giggle data model from parse function
parseGiggleData
 - private function
 - accepts downloaded data
 - parses to GiggleModel
 - returns parsed GiggleModel to caller.
*/

import Foundation

/*
 Create URL object.
 */

private let url = "https://weatherbit-v1-mashape.p.rapidapi.com/current?lat=19.0176147&lon=72.8561644&units=metric"

struct ShowerDataManager {
    func getShowerData(completion: @escaping (ShowerModel?) -> Void) {
        NetworkManager(url: url).downloadDataFromUrl { data in
            do {
                let ShowerData = try JSONDecoder().decode(ShowerData.self, from: data)
                if let model = ShowerData.data?.first {
                    let ShowerModel = ShowerModel(city: model.city_name, temp: model.app_temp, desc: model.weather?.description, unit: "C", icon: model.weather?.icon)
                    completion(ShowerModel)
                }
            } catch {
                print(error.localizedDescription)
            }
        }

    }
}
 
