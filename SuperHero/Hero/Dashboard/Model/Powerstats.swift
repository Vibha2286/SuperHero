//
//  Powerstats.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 06/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import Foundation

/// Powerstats model to store the powerstats object
struct Powerstats: Codable {
    /// Intelligence object to store the super hero intelligence
    let intelligence: String?
    /// Strength object to store the super hero strength
    let strength: String?
    /// Speed object to store the super hero speed
    let speed: String?
    /// Durability object to store the super hero durability
    let durability: String?
    /// Power object to store the super hero power
    let power: String?
    /// Combat object to store the super hero combat
    let combat: String?
}
