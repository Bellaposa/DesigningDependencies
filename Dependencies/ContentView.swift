//
//  ContentView.swift
//  Dependencies
//
//  Created by Antonio Posabella on 25/02/21.
//

import SwiftUI

struct ContentView: View {
	@ObservedObject var viewModel: AppViewModel

	var body: some View {
		NavigationView {
			ZStack(alignment: .bottom) {
				ZStack(alignment: .bottomTrailing) {
					List {
						EmptyView()
					}

					Button(
						action: {  }
					) {
						Image(systemName: "location.fill")
							.foregroundColor(.white)
							.frame(width: 60, height: 60)
					}
					.background(Color.black)
					.clipShape(Circle())
					.padding()
				}

				if !self.viewModel.isConnected {
					HStack {
						Image(systemName: "exclamationmark.octagon.fill")

						Text("Not connected to internet")
					}
					.foregroundColor(.white)
					.padding()
					.background(Color.red)
				}
			}
			.navigationBarTitle("Weather")
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView(viewModel: AppViewModel())
    }
}
