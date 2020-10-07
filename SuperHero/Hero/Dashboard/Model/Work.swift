//
//  Work.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 06/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import Foundation

/// Work model to store the work objects
struct Work: Codable {
    /// Occupation object to store the super hero occupation
    let occupation: String?
    /// Base object to store the super hero base
    let base: String?
    
    /// Variable to get he super hero occupation
    var getOccupation: String {
        return self.occupation ?? ""
    }
    
    /// Variable to get the super hero base
    var getBase: String {
        return self.base ?? ""
    }
}
