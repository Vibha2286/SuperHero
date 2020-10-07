//
//  SuperHeroAPI.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 06/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import Foundation
import Moya

/// Create base url
struct Constant {
    static let baseURL = "https://www.superheroapi.com/api.php/3630456403654972/"
}

/// Enum to get hero list
enum SuperHeroAPI {
    case heroList(id: String)
}

extension SuperHeroAPI: TargetType {
    /// return base url
    var baseURL: URL {
        return URL(string: Constant.baseURL)!
    }
    
    /// get the path of the hero list API
    var path: String {
         switch self {
               case .heroList(let name):
                   guard let name = name.urlEscaped else { return "" }
                   return "search/\(name)"
               }
    }
    
    /// return API request method
    var method: Moya.Method {
        return .get
    }
    
    /// Return data
    var sampleData: Data {
        return Data()
    }
    
    /// Request task
    var task: Task {
        return .requestPlain
    }
    
    /// Return emtpy header
    var headers: [String : String]? {
        return nil
    }
    
}
