// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class LaunchPadsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query LaunchPads {
      launchpads {
        __typename
        id
        name
        successful_launches
        vehicles_launched {
          __typename
          id
          name
          description
        }
        attempted_launches
      }
    }
    """

  public let operationName: String = "LaunchPads"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("launchpads", type: .list(.object(Launchpad.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(launchpads: [Launchpad?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "launchpads": launchpads.flatMap { (value: [Launchpad?]) -> [ResultMap?] in value.map { (value: Launchpad?) -> ResultMap? in value.flatMap { (value: Launchpad) -> ResultMap in value.resultMap } } }])
    }

    public var launchpads: [Launchpad?]? {
      get {
        return (resultMap["launchpads"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Launchpad?] in value.map { (value: ResultMap?) -> Launchpad? in value.flatMap { (value: ResultMap) -> Launchpad in Launchpad(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Launchpad?]) -> [ResultMap?] in value.map { (value: Launchpad?) -> ResultMap? in value.flatMap { (value: Launchpad) -> ResultMap in value.resultMap } } }, forKey: "launchpads")
      }
    }

    public struct Launchpad: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Launchpad"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("successful_launches", type: .scalar(Int.self)),
          GraphQLField("vehicles_launched", type: .list(.object(VehiclesLaunched.selections))),
          GraphQLField("attempted_launches", type: .scalar(Int.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, name: String? = nil, successfulLaunches: Int? = nil, vehiclesLaunched: [VehiclesLaunched?]? = nil, attemptedLaunches: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "Launchpad", "id": id, "name": name, "successful_launches": successfulLaunches, "vehicles_launched": vehiclesLaunched.flatMap { (value: [VehiclesLaunched?]) -> [ResultMap?] in value.map { (value: VehiclesLaunched?) -> ResultMap? in value.flatMap { (value: VehiclesLaunched) -> ResultMap in value.resultMap } } }, "attempted_launches": attemptedLaunches])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var successfulLaunches: Int? {
        get {
          return resultMap["successful_launches"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "successful_launches")
        }
      }

      public var vehiclesLaunched: [VehiclesLaunched?]? {
        get {
          return (resultMap["vehicles_launched"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [VehiclesLaunched?] in value.map { (value: ResultMap?) -> VehiclesLaunched? in value.flatMap { (value: ResultMap) -> VehiclesLaunched in VehiclesLaunched(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [VehiclesLaunched?]) -> [ResultMap?] in value.map { (value: VehiclesLaunched?) -> ResultMap? in value.flatMap { (value: VehiclesLaunched) -> ResultMap in value.resultMap } } }, forKey: "vehicles_launched")
        }
      }

      public var attemptedLaunches: Int? {
        get {
          return resultMap["attempted_launches"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "attempted_launches")
        }
      }

      public struct VehiclesLaunched: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Rocket"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, name: String? = nil, description: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Rocket", "id": id, "name": name, "description": description])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }
      }
    }
  }
}
