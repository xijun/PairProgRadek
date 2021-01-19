//
//  JSONConverter.swift
//  PairProgRadek
//
//  Created by Alexis Yang on 19/01/2021.
//

import Foundation

class JSONConverter {

    static func jsonToDictionary() -> Data? {
        if let path = Bundle.main.path(forResource: "users", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)

                return data
              } catch {
                   // handle error
              }
        }
        return nil
    }
}
