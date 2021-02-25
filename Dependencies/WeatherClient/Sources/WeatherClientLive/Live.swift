//
//  Live.swift
//  
//
//  Created by Antonio Posabella on 25/02/21.
//
import Combine
import Foundation
import WeatherClient

extension WeatherClient {
	public static let live = Self(
		weather: {
			URLSession.shared
			.dataTaskPublisher(for: URL(string: "https://www.metaweather.com/api/location/719258")!)
			.map { data, _ in data }
			.decode(type: WeatherResponse.self, decoder: JSONDecoder())
			.receive(on: DispatchQueue.main)
			.eraseToAnyPublisher()
		}, searchLocations: { _ in
			fatalError()
		}
	)
}
