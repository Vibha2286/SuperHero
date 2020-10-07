//
//  HeroAPI.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 06/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import Foundation
import Moya

/// Wrapper class for API calling
class HeroAPI {
    
    /// Completion hander to return API response
    typealias HeroCompletionHandler = (Hero?, Error?) -> Void
    
    /// Return MOYA provider object
    private let provider = MoyaProvider<SuperHeroAPI>()
    
    /// API call for fetching the list of super hero's
    /// - Parameters:
    ///   - name: Name of super hero
    ///   - completion: Completion block to return API response
    /// - Returns: Hero model object and error
    private func getListOfSuperHero(name: String, completion: @escaping (Hero, Error?) -> ()) {
        provider.request(.heroList(id: name)) { result in
            
            switch result {
            case .success(let response):
                do {
                    let results = try JSONDecoder().decode(Hero.self, from: response.data)
                    completion(results, nil)
                } catch let error {
                    print(error)
                }
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
    /// Funtion to call API request method
    /// - Parameters:
    ///   - name: Name of super hero
    ///   - completion: Completion block to return API response
    func getHeroList(name: String, completionHandler completion: @escaping HeroCompletionHandler) {
        getListOfSuperHero(name: name) { (hero: Hero?, error: Error?) in
            completion(hero, error)
        }
    }
}
