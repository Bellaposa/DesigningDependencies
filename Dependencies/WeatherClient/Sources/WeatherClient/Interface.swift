//
//  WeatherClient.swift
//  
//
//  Created by Antonio Posabella on 25/02/21.
//
import Combine
import CoreLocation
import Foundation


public struct WeatherClient {

	public typealias WeatherResponsePublisher = () -> AnyPublisher<WeatherResponse, Error>
	public typealias SearchLocationsPublisher = (CLLocationCoordinate2D) -> AnyPublisher<[Location], Error>

	public var weather: WeatherResponsePublisher
	public var searchLocations: SearchLocationsPublisher

	public init(
		weather: @escaping WeatherResponsePublisher,
		searchLocations: @escaping SearchLocationsPublisher
	) {
		self.weather = weather
		self.searchLocations = searchLocations
	}
}


public struct Location {}
