//
//  DashboardTableViewCell.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 05/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import UIKit
import SDWebImage

/// Dabhboard cell class to display super hero list cell
class DashboardTableViewCell: UITableViewCell {
    
    /// Imageview object to display super hero image
    @IBOutlet weak var heroImageView: UIImageView!
    /// Label object to display super hero name
    @IBOutlet weak var heroNameLabel: UILabel!
    /// Label object to display super hero full name
    @IBOutlet weak var heroFullNameLabel: UILabel!
    /// Label object to display super hero gender
    @IBOutlet weak var heroGenderLabel: UILabel!
    
    /// Method use to update UI/UX based on API response
    /// - Parameter result: Result object
    func updateUI(result: Result) {
        self.heroImageView.sd_setImage(with: result.getImageUrl, placeholderImage: nil, options: .lowPriority) { (image, error, cacheType, url) in
            guard let image = image else {
                return
            }
            self.heroImageView.image = image
        }
        
        self.heroNameLabel.text = result.getName
        self.heroFullNameLabel.text = result.biography?.getFullName
        self.heroGenderLabel.text = result.appearance?.getGender
    }
}
