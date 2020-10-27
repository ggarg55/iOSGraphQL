//
//  VehicleLaunched.swift
//  GraphQLDemo
//
//  Created by Guest User .
//  Copyright © 2020 Guest User. All rights reserved.
//

import Foundation

// MARK: - VehiclesLaunched
struct VehiclesLaunched: Codable {
    let id, name, vehiclesLaunchedDescription: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case vehiclesLaunchedDescription = "description"
    }
}
