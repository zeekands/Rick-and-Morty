//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by zeekands on 12/01/23.
//

import Foundation

/// Model for Character data
struct Character: Codable {
    let id: Int
    let name, species, type: String
    let status: RMCharacterStatus
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}



