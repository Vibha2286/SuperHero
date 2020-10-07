//
//  DashboardView.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 05/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import Foundation

/// Dashboard protocol to display dashboard view
protocol DashboardView: AnyObject {
    /// Display the screen title
    /// - Parameter title: Title string
    func configureTitle(title: String)
    /// Reload table view
    func reloadTableView()
    /// Show loader when API call
    func showLoader()
    /// Dismiss loader when received the API respose or error
    func dismissLoader()
    /// Update Result array once received the API response
    /// - Parameter results: Result object array
    func updateHeroData(results: [Result])
}
