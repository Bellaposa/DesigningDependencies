//
//  WeatherResponse.swift
//  Dependencies
//
//  Created by Antonio Posabella on 25/02/21.
//

import Foundation

struct WeatherResponse: Decodable, Equatable {
	var consolidatedWeather: [ConsolidateWeather]
}
