//
//  Result.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 06/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import Foundation

/// Result model to store result objects
struct Result: Codable {
    /// Id object to store id of super hero
    let id: String?
    /// Name object to store name of super hero
    let name: String?
    /// Powerstats object to store powerstats
    let powerstats: Powerstats?
    /// Biography object to store biography
    let biography: Biography?
    /// Appearance object to store appearance
    let appearance: Appearance?
    /// Work object to store work
    let work: Work?
    /// Connections object to store connections
    let connections: Connections?
    /// Image object to store image
    let image: Image?
    
    /// Initialize method for decoding all the instance variables
    /// - Parameter decoder: Decoder object
    /// - Throws: Throw exception
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        powerstats = try values.decodeIfPresent(Powerstats.self, forKey: .powerstats)
        biography = try values.decodeIfPresent(Biography.self, forKey: .biography)
        appearance = try values.decodeIfPresent(Appearance.self, forKey: .appearance)
        work = try values.decodeIfPresent(Work.self, forKey: .work)
        connections = try values.decodeIfPresent(Connections.self, forKey: .connections)
        image = try values.decodeIfPresent(Image.self, forKey: .image)
    }
    
    /// Variable to return the image URL
    var getImageUrl: URL {
        if let image = self.image, let url = image.url  {
            return URL(string: url)!
        }
        return URL(string: "")!
    }
    
    /// Variable ot get the name of super hero
    var getName: String {
        return self.name ?? ""
    }
}
