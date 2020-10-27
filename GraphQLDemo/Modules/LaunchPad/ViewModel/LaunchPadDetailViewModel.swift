//
//  LaunchPadDetailViewModel.swift
//  GraphQLDemo
//
//  Created by Guest User .
//  Copyright © 2020 Guest User. All rights reserved.
//

import Foundation

class LaunchPadDetailViewModel {
    var data: [String: Any?] = [:]
    var details = LIObservable<LaunchDetail>(LaunchDetail(successfulLaunches: 0, name: "", vehiclesLaunched: [], typename: "", attemptedLaunches: 0, id:""))
    
    func prepareData(data: [String: Any?]) {
        self.data = data
        do {
            let jsonObj = try JSONSerialization.data(withJSONObject: data, options: .prettyPrinted)
            let launchDetail = try JSONDecoder().decode(LaunchDetail.self, from: jsonObj)
            details.value = launchDetail
        } catch {
            debugPrint(error.localizedDescription)
        }
    }
}
