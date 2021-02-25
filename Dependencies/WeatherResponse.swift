//
//  WeatherResponse.swift
//  Dependencies
//
//  Created by Antonio Posabella on 25/02/21.
//

import Foundation

struct WeatherResponse: Decodable, Equatable {
	var consolidatedWeather: [ConsolidateWeather]

	struct ConsolidateWeather: Decodable, Equatable {
		var applicabileDate: String
		var id: Int
		var maxTemp: Double
		var minTemp: Double
		var theTemp: Double

		private enum CodingKeys: String, CodingKey {
			case applicabileDate = "applicable_date",
			id,
			maxTemp = "max_temp",
			minTemp = "min_temp",
			theTemp = "the_temp"
		}
	}

	private enum CodingKeys: String, CodingKey {
		case consolidatedWeather = "consolidated_weather"
	}
}
