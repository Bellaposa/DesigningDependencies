//
//  Mocks.swift
//  
//
//  Created by Antonio Posabella on 25/02/21.
//
import Combine
import Foundation

extension WeatherClient {
	public static let empty = Self(
		weather: {
			Just(WeatherResponse(consolidatedWeather: []))
				.setFailureType(to: Error.self)
				.eraseToAnyPublisher()
		}, searchLocations: { _ in
			Just([]).setFailureType(to: Error.self)
				.eraseToAnyPublisher()
		}
	)

	public static let happyPath = Self(
		weather: {
			Just(
				WeatherResponse(
					consolidatedWeather: [
						.init(applicabileDate: "2021-03-01", id: 1, maxTemp: 10, minTemp: -20, theTemp: 2),
						.init(applicabileDate: "2021-04-01", id: 2, maxTemp: 100, minTemp: -200, theTemp: 20)
					]
				))
				.setFailureType(to: Error.self)
				.eraseToAnyPublisher()
		}, searchLocations: { _ in
			Just([])
				.setFailureType(to: Error.self)
				.eraseToAnyPublisher()
		}
	)

	public static let failed = Self(
		weather: {
			Fail(error: NSError(domain: "", code: 1))
				.eraseToAnyPublisher()
		}, searchLocations: { _ in
			Just([])
				.setFailureType(to: Error.self)
				.eraseToAnyPublisher()
		}
	)

}
