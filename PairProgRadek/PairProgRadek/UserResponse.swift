//
//  UserResponse.swift
//  PairProgRadek
//
//  Created by Julien Sechaud on 19/01/2021.
//

import Foundation

struct UserResponse: Decodable {
    var firstname: String?
    var lastName: String?
    var age: String
    var employed: Bool?
}

struct User {
    var firstname: String?
    var lastName: String?
    var age: Int?
    var employed: Bool?
    
    init(userResponse: UserResponse) {
        self.firstname = userResponse.firstname
        self.lastName = userResponse.lastName
        self.age = Int(userResponse.age)
        self.employed = userResponse.employed
    }
}

struct UserVM {
    var name: String? // concatenate first and last name
    var employed: Bool?
    
    init(user: User) {
        self.name = user.firstname
        self.employed = user.employed
    }

}


