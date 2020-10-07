//
//  Connections.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 06/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import Foundation

/// Connection model to store the connections objects
struct Connections: Codable {
    /// Group affiliaton object to store the super hero group affiliation
    let groupAffiliation: String?
    /// Relatives object to store the super hero relatives
    let relatives: String?
    
    /// Enum for coding keys
    enum CodingKeys: String, CodingKey {
        case groupAffiliation = "group-affiliation"
        case relatives
    }
    
    /// Initialize method for decoding all the instance variables
    /// - Parameter decoder: Decoder object
    /// - Throws: Throw exception
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        groupAffiliation = try values.decodeIfPresent(String.self, forKey: .groupAffiliation)
        relatives = try values.decodeIfPresent(String.self, forKey: .relatives)
    }
    
    /// Variable to return the super hero group affiliation
    var getGroupAffiliation: String {
        return self.groupAffiliation ?? ""
    }
    
    /// Variable to get the super hero relatives
    var getRelatives: String {
        return self.relatives ?? ""
    }
}
