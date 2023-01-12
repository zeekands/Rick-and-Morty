//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by zeekands on 12/01/23.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name, airDate, episode: String
    let characters: [String]
    let url: String
    let created: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case airDate = "air_date"
        case episode, characters, url, created
    }
}
