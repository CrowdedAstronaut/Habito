//
//  Activity.swift
//  Habito
//
//  Created by Ross Phillips on 5/3/22.
//

import Foundation

struct Activity: Codable, Identifiable, Equatable {
	var id = UUID()
	var title: String
	var description: String
	var completionCount = 0

	static let example = Activity(title: "Example activity", description: "This is a test activity.")
}
