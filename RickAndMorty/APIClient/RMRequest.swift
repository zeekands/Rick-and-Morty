//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by zeekands on 12/01/23.
//

import Foundation

/// Object that represent a single API Call 
final class RMRequest{
    
    
    /// Base url constant
    private struct Constants{
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired Endpoint
    private let endpoint: RMEndPoint
    
    /// Path components API if any
    private let pathComponents: [String]
    /// Query components API if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructor url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach ({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            // to build query parameter name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "/\($0.name)=\(value)"
            }).joined(separator: "&")
            string += argumentString
        }
        return string
    }
    
    /// HTTP Method
    public let httpMethod = "GET"
    
    /// Computed and Constructed url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target Endpoint
    ///   - pathComponents: collectio of path components
    ///   - queryParameters: collections of query parameers
    public init(
        endpoint: RMEndPoint,
        pathComponents: [String] = [],
        queryParameters: [URLQueryItem] = []
    ) {
            self.endpoint = endpoint
            self.pathComponents =  pathComponents
            self.queryParameters = queryParameters
        }
}

extension RMRequest {
    static let listCharacterRequest = RMRequest(endpoint: .character)
}
