//
//  Appearance.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 06/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import Foundation

/// Appearance model to store appearance objects
struct Appearance: Codable {
    /// Gender object to store gender
    let gender: String?
    /// Race object to store race
    let race: String?
    /// Height object to store array of height's
    let height: [String]?
    /// Weight object to store array of weight's
    let weight: [String]?
    /// Eye color object to store color
    let eyeColor: String?
    /// Hair color object to store color
    let hairColor: String?
    
    /// Enum for coding keys
    enum CodingKeys: String, CodingKey {
        case gender, race, height, weight
        case eyeColor = "eye-color"
        case hairColor = "hair-color"
    }
    
    /// Initialize method for decoding all the instance variables
    /// - Parameter decoder: Decoder object
    /// - Throws: Throw exception
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        gender = try values.decodeIfPresent(String.self, forKey: .gender)
        race = try values.decodeIfPresent(String.self, forKey: .race)
        height = try values.decodeIfPresent([String].self, forKey: .height)
        weight = try values.decodeIfPresent([String].self, forKey: .weight)
        eyeColor = try values.decodeIfPresent(String.self, forKey: .eyeColor)
        hairColor = try values.decodeIfPresent(String.self, forKey: .hairColor)
    }
    
    /// Variable to get the super hero gender
    var getGender: String {
        return self.gender ?? ""
    }
    
    /// Variable to get the race
    var getRace: String {
        return self.race ?? ""
    }
    
    /// Variable to get the super hero height
    var getHeight: String {
        return self.height?.joined(separator: ",") ?? ""
    }
    
    /// Variable to get the super hero weight
    var getWeight: String {
        return self.weight?.joined(separator: ",") ?? ""
    }
    
    /// Variable to get the super hero eye color
    var getEyeColor: String {
        return self.eyeColor ?? ""
    }
    
    /// Variable to get the supe hero hair color
    var getHairColor: String {
        return self.hairColor ?? ""
    }
}
