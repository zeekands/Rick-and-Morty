//
//  RMGetAllCharacterResponse.swift
//  RickAndMorty
//
//  Created by zeekands on 15/01/23.
//

import Foundation

// MARK: - RMGetAllCharacterResponse
struct RMGetAllCharacterResponse: Codable {
    struct Info: Codable {
        let count, pages: Int
        let next: String?
        let prev: String?
    }

    let info: Info
    let results: [RMCharacter]
}

