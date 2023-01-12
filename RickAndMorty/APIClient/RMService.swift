//
//  RMService.swift
//  RickAndMorty
//
//  Created by zeekands on 12/01/23.
//

import Foundation

/// Primary api service object to get rick and morty data
final class RMService {
    /// shared  singleton object
    static let shared = RMService()
    
    /// Privatize contructor
    private init() {}
    
    /// Send rick and morty API Call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - completion: Callback with data or Error 
    public func execute(_ request : RMRequest, completion : @escaping () -> Void) {
        
    }
}
