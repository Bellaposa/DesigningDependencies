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

	init(isConnected: Bool = true) {
		self.isConnected = isConnected
	}
}
