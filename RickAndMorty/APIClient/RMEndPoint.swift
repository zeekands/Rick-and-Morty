//
//  RMEndPoint.swift
//  RickAndMorty
//
//  Created by zeekands on 12/01/23.
//

import Foundation

/// Represent Uniqe API EndPoint
@frozen enum RMEndPoint : String {
    /// EndPoint for character
    case character
    /// EndPoint for locations
    case location
    /// EndPioint for episodes
    case episode
}
