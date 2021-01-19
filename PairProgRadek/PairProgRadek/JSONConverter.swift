//
//  JSONConverter.swift
//  PairProgRadek
//
//  Created by Alexis Yang on 19/01/2021.
//

import Foundation

class JSONConverter {

    static func jsonToDictionary() -> [[String: Any]]? {
        if let path = Bundle.main.path(forResource: "users", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)

                if let jsonResult = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                    return jsonResult["users"] as? [[String: Any]]
                }
                return nil
              } catch {
                   // handle error
              }
        }
        return nil
    }
}
