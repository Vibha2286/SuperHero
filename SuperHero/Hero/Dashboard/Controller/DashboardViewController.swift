//
//  DashboardViewController.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 05/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import UIKit
import MBProgressHUD

/// Controller to display the super hero list
class DashboardViewController: UIViewController {
    
    /// Tableview object to display the tableview
    @IBOutlet weak var tableView: UITableView!
    /// Search bar object to display the serach bar
    @IBOutlet weak var searchbar: UISearchBar!
    
    /// View model object for binding the data
    private lazy var viewModel = DashboardViewModel(view: self)
    /// Result array object to store the super hero result
    private var results = [Result]()
    /// Search text string object to store the super hero search name
    private var searchText: String = "batman"

    /// View Controller Lifecycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView.tableFooterView = UIView()
        searchbar.setSearchFieldBackgroundImage(UIImage(), for: .normal)
        bindData()
    }
    
    /// Use to bind the data from controller to view model
    func bindData() {
        viewModel.configureView()
        viewModel.getAPIData(searchText: self.searchText)
    }
}

/// Tableview delegate methods
extension DashboardViewController: UITableViewDelegate, UITableViewDataSource {
    /// Method to display number of rows in the table
    /// - Parameters:
    ///   - tableView: tableview object
    ///   - section: section object
    /// - Returns: number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }
    
    /// Method to display cell in the table view
    /// - Parameters:
    ///   - tableView: tableview object
    ///   - indexPath: indexpath object
    /// - Returns: table view cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? DashboardTableViewCell else {
            return UITableViewCell()
        }
        let result = self.results[indexPath.row]
        cell.updateUI(result: result)
        return cell
    }
    
    /// Called when the table view row is selected
    /// - Parameters:
    ///   - tableView: tableview object
    ///   - indexPath: indexpath object
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.view.endEditing(true)
        let detailsVC = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SuperHeroDetailsViewController") as! SuperHeroDetailsViewController
        detailsVC.initWithData(data: self.results[indexPath.row])
        self.navigationController?.pushViewController(detailsVC, animated: true)
     }
}

/// Dashboard view protocol methods
extension DashboardViewController: DashboardView {
    /// Display the screen title
    /// - Parameter title: Title string
    func configureTitle(title: String) {
        self.title = title
    }
    
    /// Update Result array once received the API response
    /// - Parameter results: Result object array
    func updateHeroData(results: [Result]) {
        self.results = results
    }
    
    /// Show loader when API call
    func showLoader() {
        MBProgressHUD.showAdded(to: self.view, animated: true)
    }
    
    /// Dismiss loader when received the API respose or error
    func dismissLoader() {
        MBProgressHUD.hide(for: self.view, animated: true)
    }
    
    /// Reload table view
    func reloadTableView() {
        self.tableView.reloadData()
    }
}

/// Search bar delegate methods
extension DashboardViewController: UISearchBarDelegate {
    /// Method evoke when clicked on search button
    /// - Parameter searchBar: search bar object
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if self.searchText != "" {
            viewModel.getAPIData(searchText: self.searchText)
        }
        self.view.endEditing(true)
    }
    
    /// Method evoke when type each character in the search bar
    /// - Parameters:
    ///   - searchBar: search bar object
    ///   - searchText: search text string
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.searchText = searchText
    }
}
