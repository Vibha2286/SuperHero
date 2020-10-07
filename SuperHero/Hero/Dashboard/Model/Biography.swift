//
//  Biography.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 06/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import Foundation

/// Biography model to store biography objects
struct Biography: Codable {
    /// Full name object to store super hero full name
    let fullName: String?
    /// Alter egos object to store the super hero egos
    let alterEgos: String?
    /// Aliases object to store the array of super hero aliases
    let aliases: [String]?
    /// Place of birth object to store the super hero birth place
    let placeOfBirth: String?
    /// First appearance object to store the super hero first appearance
    let firstAppearance: String?
    /// Publisher object to store the super hero publisher
    let publisher: String?
    /// Alighment object to store the super hero alighment
    let alignment: String?
    
    /// Enum for coding keys
    enum CodingKeys: String, CodingKey {
        case fullName = "full-name"
        case alterEgos = "alter-egos"
        case aliases
        case placeOfBirth = "place-of-birth"
        case firstAppearance = "first-appearance"
        case publisher, alignment
    }
    
    /// Initialize method for decoding all the instance variables
    /// - Parameter decoder: Decoder object
    /// - Throws: Throw exception
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        fullName = try values.decodeIfPresent(String.self, forKey: .fullName)
        alterEgos = try values.decodeIfPresent(String.self, forKey: .alterEgos)
        aliases = try values.decodeIfPresent([String].self, forKey: .aliases)
        placeOfBirth = try values.decodeIfPresent(String.self, forKey: .placeOfBirth)
        firstAppearance = try values.decodeIfPresent(String.self, forKey: .firstAppearance)
        publisher = try values.decodeIfPresent(String.self, forKey: .publisher)
        alignment = try values.decodeIfPresent(String.self, forKey: .alignment)
    }
    
    /// Variable to get the suepr hero full name
    var getFullName: String {
          return self.fullName ?? ""
      }
    
    /// Variable to get he super hero publisher
    var getPublisher: String {
        return self.publisher ?? ""
    }
    
    /// Variable to get super hero alter egos
    var getAlterEgos: String {
           return self.alterEgos ?? ""
       }
    
    /// Variable to get the super hero aliases
    var getAliases: String {
        return self.aliases?.joined(separator: ",") ?? ""
    }
    
    /// Variable to get the super hero place of birth
    var getPlaceOfBirth: String {
        return self.placeOfBirth ?? ""
    }
    
    /// Variable to get the super hero first appearance
    var getFirstAppearance: String {
        return self.firstAppearance ?? ""
    }
}
