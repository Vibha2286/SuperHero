//
//  SuperHeroDetailsView.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 06/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import Foundation

/// Super hero detail protocol to display detail view
protocol SuperHeroDetailsView: AnyObject {
    /// Display the screen title
    /// - Parameter title: Title string
    func configureTitle(title: String)
    /// Display hero image
    /// - Parameter image: image url
    func configureHeroImage(image: URL)
    /// Display biography data
    /// - Parameter bio: biography object
    func configureBiography(bio: Biography)
    /// Display apperance data
    /// - Parameter appearance: appearance object
    func configureAppearance(appearance: Appearance)
    /// Display connection data
    /// - Parameter connections: connection object
    func configureConnections(connections: Connections)
    /// Display work data
    /// - Parameter work: work object
    func configureWork(work: Work)
}
