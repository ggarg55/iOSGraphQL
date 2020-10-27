//
//  ApolloService.swift
//  GraphQLDemo
//
//  Created by Guest User .
//  Copyright © 2020 Guest User. All rights reserved.
//

import Foundation
import Apollo

class ApolloService {
  static let shared = ApolloService()
  private(set) lazy var apollo = ApolloClient(url: URL(string: kLaunchPadURL)!)
}
