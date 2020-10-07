//
//  StringExtentions.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 06/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import Foundation

/// All string extensions
extension String {
    
    /// Get localized string
    /// - Parameters:
    ///   - bundle: Search in main bundle
    ///   - tableName: Search Localizable file
    /// - Returns: Localized string
    func localized (bundle: Bundle = .main, tableName: String = "Localizable") -> String {
        return NSLocalizedString(self, tableName: tableName, value: "\(self)", comment: "")
    }
    
    /// Remove the escape character from the string
    var urlEscaped: String? {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
    }

}
