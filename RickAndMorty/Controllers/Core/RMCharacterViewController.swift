//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by zeekands on 12/01/23.
//

import UIKit

/// Controller to show and search Character
final class RMCharacterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        
        print(request.url)
    }
    
    
}
