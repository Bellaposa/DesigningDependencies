//
//  WeatherResponse.swift
//  Dependencies
//
//  Created by Antonio Posabella on 25/02/21.
//

import Foundation

public struct WeatherResponse: Decodable, Equatable {
	public var consolidatedWeather: [ConsolidateWeather]

	public struct ConsolidateWeather: Decodable, Equatable {
		public var applicabileDate: String
		public var id: Int
		public var maxTemp: Double
		public var minTemp: Double
		public var theTemp: Double

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
