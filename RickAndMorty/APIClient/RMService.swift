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

    enum RMServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
    }

    /// Privatize contructor
    private init() { }

    /// Send rick and morty API Call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - completion: Callback with data or Error
    ///   - typer: the type of object we expect to get back
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failedToCreateRequest))
            return
        }

        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            
            // Decode data
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }

    // MARK: -Private
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else { return nil }

        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod


        return request
    }
}
