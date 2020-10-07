//
//  DashboardViewModel.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 05/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import Foundation

/// Dashboard view model responsible to super hero list logic
class DashboardViewModel {
    
    /// Dashboard view object
    private weak var view: DashboardView?
    /// Hero network api client object
    private let client = HeroAPI()

    /// Initialize view and array
    /// - Parameter view: Dashbaord view
    init(view: DashboardView) {
        self.view = view
    }
    
    /// Configure view to display screen title
    func configureView() {
        view?.configureTitle(title: "dashboard.title".localized())
    }
    
    /// Responsible to fetch the super hero list
    /// - Parameter searchText: super hero name
    func getAPIData(searchText: String) {
        view?.showLoader()
        
        client.getHeroList(name: searchText) { [weak self] hero, error in
            guard let heroList = hero else {
                self?.view?.dismissLoader()
                return
            }
            self?.view?.updateHeroData(results: heroList.results ?? [])
            self?.view?.reloadTableView()
            self?.view?.dismissLoader()
        }
    }
}
