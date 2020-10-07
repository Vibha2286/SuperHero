//
//  SuperHeroDetailsViewModel.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 06/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import Foundation

/// Super hero details view model responsible for details screen logic
class SuperHeroDetailsViewModel {
    
    /// SuperHero detail view object
    private weak var view: SuperHeroDetailsView?
    /// Result model object
    var superHeroDetails: Result?
    
    /// Initialize view and array
    /// - Parameter view: SuperHeroDetailsView view
    init(view: SuperHeroDetailsView, result: Result?) {
        self.view = view
        self.superHeroDetails = result
    }
    
    /// To configure the detail screen views
    func configureView() {
        if let result = superHeroDetails, let bio = result.biography, let appearance = result.appearance, let connections = result.connections, let work = result.work {
            view?.configureTitle(title: result.getName)
            view?.configureHeroImage(image: result.getImageUrl)
            view?.configureBiography(bio: bio)
            view?.configureAppearance(appearance: appearance)
            view?.configureConnections(connections: connections)
            view?.configureWork(work: work)
        }
    }
}
