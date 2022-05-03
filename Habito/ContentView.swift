//
//  ContentView.swift
//  Habito
//
//  Created by Ross Phillips on 5/3/22.
//

import SwiftUI

struct ContentView: View {
	@StateObject var data = Activities()

	var body: some View {
		NavigationView {
			List(data.activities) { activity in
				NavigationLink {
					Text("Detail view")
				} label: {
					HStack {
						Text(activity.title)
						Spacer()

						Text(String(activity.completionCount))
					}
				}
			}
			.navigationTitle("Habito")
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
