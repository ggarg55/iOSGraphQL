//
//  LaunchPadListViewModel.swift
//  GraphQLDemo
//
//  Created by Guest User .
//  Copyright © 2020 Guest User. All rights reserved.
//

import Foundation

class LaunchPadListViewModel {
    var launchPads = LIObservable<[LaunchPadsQuery.Data.Launchpad]>([])
    
}

// Network Call
extension LaunchPadListViewModel {
    func fetchLaunchPadData() {
        ApolloService.shared.apollo.fetch(query: LaunchPadsQuery()) {[weak self] result in
            switch result {
            case .success(let graphQLResult):
                guard let self = self else { return }
                //self.launchPadData = graphQLResult.data
                self.launchPads.value = graphQLResult.data?.launchpads as! [LaunchPadsQuery.Data.Launchpad]
                debugPrint("Success! Result: \(graphQLResult)")
            case .failure(let error):
                debugPrint("Failure! Error: \(error)")
            }
        }
    }
}
