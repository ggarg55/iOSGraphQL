//
//  LaunchPad.swift
//  GraphQLDemo
//
//  Created by Guest User .
//  Copyright © 2020 Guest User. All rights reserved.
//

import Foundation

// MARK: - Launchpad
struct Launchpad: Codable {
    let id, name: String
    let successfulLaunches: Int
    let vehiclesLaunched: [VehiclesLaunched]
    let attemptedLaunches: Int

    enum CodingKeys: String, CodingKey {
        case id, name
        case successfulLaunches = "successful_launches"
        case vehiclesLaunched = "vehicles_launched"
        case attemptedLaunches = "attempted_launches"
    }
}
