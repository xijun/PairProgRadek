//
//  FilterFirstnameUseCase.swift
//  PairProgRadek
//
//  Created by Alexis Yang on 19/01/2021.
//

import Foundation

protocol FilterFirstnameUseCaseProtocol {
    func getUsersByFirstname(queryParam: String) -> [User]
}

class FilterFirstnameUseCase: FilterFirstnameUseCaseProtocol {

    private let userListRepository: UserListProtocol

    init(userListRepository: UserListProtocol) {
        self.userListRepository = userListRepository
    }

    func getUsersByFirstname(queryParam: String) -> [User] {
        let users = userListRepository.read()
        return users.filter({ $0.firstname?.starts(with: queryParam) ?? false })
    }
}
