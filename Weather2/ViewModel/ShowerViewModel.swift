//
//  WeatherViewModel.swift
//  Weather2
//
//  Created by Roja on 25/11/22.
//

import Foundation

struct ShowerViewModel {
    func getShowerViewModel(completion: @escaping (ShowerModel?) -> Void) {
        ShowerDataManager().getShowerData { Shower in
            completion(Shower)
        }
    }
}
