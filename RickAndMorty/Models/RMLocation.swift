//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by zeekands on 12/01/23.
//

import Foundation

// MARK: - Character
struct RMLocation: Codable {
    let id: Int
    let name, type, dimension: String
    let residents: [String]
    let url: String
    let created: String
}
