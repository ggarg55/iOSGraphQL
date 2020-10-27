//
//  LaunchDetail.swift
//  GraphQLDemo
//
//  Created by Guest User.
//  Copyright © 2020 Guest User. All rights reserved.
//

import Foundation

// MARK: - LaunchDetail
struct LaunchDetail: Codable {
    let successfulLaunches: Int
    let name: String
    let vehiclesLaunched: [Launched]
    let typename: String
    let attemptedLaunches: Int
    let id: String

    enum CodingKeys: String, CodingKey {
        case successfulLaunches = "successful_launches"
        case name
        case vehiclesLaunched = "vehicles_launched"
        case typename = "__typename"
        case attemptedLaunches = "attempted_launches"
        case id
    }
}

// MARK: - VehiclesLaunched
struct Launched: Codable {
    let vehiclesLaunchedDescription, id, name, typename: String

    enum CodingKeys: String, CodingKey {
        case vehiclesLaunchedDescription = "description"
        case id, name
        case typename = "__typename"
    }
}
