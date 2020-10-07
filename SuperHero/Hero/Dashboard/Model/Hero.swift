//
//  Hero.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 06/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import Foundation

/// Hero model to store the super hero API response
struct Hero: Codable {
    /// Response object to store response
    let response: String?
    /// Response result object
    let resultsFor: String?
    /// Resuit array object to store results
    let results: [Result]?
    
    /// Enum for coding keys
    enum CodingKeys: String, CodingKey {
        case response
        case resultsFor = "results-for"
        case results
    }
    
    /// Initialize method for decoding all the instance variables
    /// - Parameter decoder: Decoder object
    /// - Throws: Throw exception
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        response = try values.decodeIfPresent(String.self, forKey: .response)
        resultsFor = try values.decodeIfPresent(String.self, forKey: .resultsFor)
        results = try values.decodeIfPresent([Result].self, forKey: .results)
    }
}

