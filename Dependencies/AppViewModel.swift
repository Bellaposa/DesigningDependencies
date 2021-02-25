//
//  AppViewModel.swift
//  Dependencies
//
//  Created by Antonio Posabella on 25/02/21.
//

import Combine
import Foundation
import WeatherClient

class AppViewModel: ObservableObject {
	@Published var isConnected = true
	@Published var weatherResults: [WeatherResponse.ConsolidateWeather] = []
	private var weatherRequestCancellable: AnyCancellable?

	init(
		isConnected: Bool = true,
		weatherClient: WeatherClient
		) {
		self.isConnected = isConnected
		self.weatherRequestCancellable = weatherClient
			.weather()
			.sink(
				receiveCompletion: { _ in },
				receiveValue: { [weak self] response in
					self?.weatherResults = response.consolidatedWeather
				}
			)
	}
}
