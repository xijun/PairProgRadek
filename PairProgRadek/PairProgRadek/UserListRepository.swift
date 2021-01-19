//
//  UserListRepository.swift
//  PairProgRadek
//
//  Created by Julien Sechaud on 19/01/2021.
//

import Foundation

protocol UserListProtocol {
    func read() -> [User]
    func delete()
}


class UserListRepository: UserListProtocol {

    private var userResponses: [UserResponse]? {
        get {
            // returns cached value
        }
        set {
            // save in cache
        }
    }

    func delete() {
        // delete a user locally and send delete request
    }

    func read() -> [User] {
        if let userResponsesCache = userResponses {
            return userResponsesCache.compactMap({ User(userResponse: $0) })
        }
        guard let data = JSONConverter.jsonToDictionary() else {
            return []
        }
        let decoder = JSONDecoder()
        let userResponses = try! decoder.decode([UserResponse].self, from: data)
        self.userResponses = userResponses
        return userResponses.compactMap({ User(userResponse: $0) })
    }
}
