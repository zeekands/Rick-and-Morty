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
        
        RMService.shared.execute(.listCharacterRequest, expecting: RMGetAllCharacterResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total "+String(model.info.count))
                print("Result count "+String(model.results.count))

            case .failure(let error):
                print(String(describing: error))

            }
            
        }
        
    }
    
    
}
