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
			ContentView(viewModel: .init())
        }
    }
}
