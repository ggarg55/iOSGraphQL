//
//  LaunchPadData.swift
//  GraphQLDemo
//
//  Created by Guest User.
//  Copyright © 2020 Guest User. All rights reserved.
//

import Foundation

// MARK: - LaunchPadData
struct LaunchPadData: Codable {
    let data: LaunchPadList
}

// MARK: - LaunchPadList
struct LaunchPadList: Codable {
    let launchpads: [Launchpad]
}
