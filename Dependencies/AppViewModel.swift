//
//  AppViewModel.swift
//  Dependencies
//
//  Created by Antonio Posabella on 25/02/21.
//

import Foundation
import Combine

class AppViewModel: ObservableObject {
	@Published var isConnected = true
	@Published var weatherResults: [WeatherResponse.ConsolidateWeather] = []
	private var weatherRequestCancellable: AnyCancellable?

	init(isConnected: Bool = true) {
		self.isConnected = isConnected

		self.weatherRequestCancellable = URLSession.shared
			.dataTaskPublisher(for: URL(string: "https://www.metaweather.com/api/location/719258")!)
			.map { data, _ in data }
			.decode(type: WeatherResponse.self, decoder: JSONDecoder())
			.receive(on: DispatchQueue.main)
			.sink(
				receiveCompletion: {
					print("Completion: ", $0)
				},
				receiveValue: { [weak self] in
					print("receiveValue: ", $0)
					self?.weatherResults = $0.consolidatedWeather
				}
			)
	}
}
