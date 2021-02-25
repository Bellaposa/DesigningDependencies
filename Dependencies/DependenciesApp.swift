//
//  DependenciesApp.swift
//  Dependencies
//
//  Created by Antonio Posabella on 25/02/21.
//

import SwiftUI

@main
struct DependenciesApp: App {
    var body: some Scene {
        WindowGroup {
			ContentView(viewModel: AppViewModel( weatherClient: .failed))
        }
    }
}

struct DependenciesApp_Previews: PreviewProvider {
	static var previews: some View {
		ContentView(viewModel: AppViewModel(weatherClient: .failed))
	}
}
