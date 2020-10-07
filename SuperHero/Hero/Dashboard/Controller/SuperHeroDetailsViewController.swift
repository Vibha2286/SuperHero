//
//  SuperHeroDetailsViewController.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 06/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import UIKit
import SDWebImage

/// Controller to display the super hero detail screen
class SuperHeroDetailsViewController: UIViewController {
    
    /// Imageview object to display super hero blur image
    @IBOutlet weak var heroBlurImageView: UIImageView!
    /// Imageview object to display super hero image
    @IBOutlet weak var heroImageView: UIImageView!
    /// Label object to display super hero full name
    @IBOutlet weak var heroFullNameLabel: UILabel!
    /// Label object to display super hero publisher
    @IBOutlet weak var publisherLabel: UILabel!
    
    /// Label object to display super hero bio full name
    @IBOutlet weak var bioFullNameLabel: UILabel!
    /// Label object to display super hero bio publisher
    @IBOutlet weak var biopublisherLabel: UILabel!
    /// Label object to display super hero bio egos
    @IBOutlet weak var bioAlerEgosLabel: UILabel!
    /// Label object to display super hero bio aliases
    @IBOutlet weak var bioAliasesLabel: UILabel!
    /// Label object to display bio POB
    @IBOutlet weak var bioPOBLabel: UILabel!
    /// Label object to display bio first appearance
    @IBOutlet weak var bioFirsAppearanceLabel: UILabel!
    /// View object to display the biography view
    @IBOutlet weak var biographyView: UIView!
    
    /// Label object to display appearance gender
    @IBOutlet weak var appearnceGenderLabel: UILabel!
    /// Label object to display appearance race
    @IBOutlet weak var appearnceRaceLabel: UILabel!
    /// Label object to display appearance height
    @IBOutlet weak var appearnceHeightLabel: UILabel!
    /// Label object to display appearance weight
    @IBOutlet weak var appearnceWeightLabel: UILabel!
    /// Label object to display appearance eye color
    @IBOutlet weak var appearnceEyeColorLabel: UILabel!
    /// Label object to display appearance hair color
    @IBOutlet weak var appearnceHairColorLabel: UILabel!
    /// View object to display appearance view
    @IBOutlet weak var appearnceView: UIView!
    
    /// Label object to display connection group affiliation
    @IBOutlet weak var connectionGroupAffiliationLabel: UILabel!
    /// Label object to display connection relatives
    @IBOutlet weak var connectionRelativesLabel: UILabel!
    /// View object to display connection view
    @IBOutlet weak var connectionView: UIView!
    
    /// Label object to display work occupation
    @IBOutlet weak var workOccupationLabel: UILabel!
    /// Label object to display work base
    @IBOutlet weak var workBaseLabel: UILabel!
    /// View object to display work view
    @IBOutlet weak var workView: UIView!
    
    /// View model object for binding the data
    private lazy var viewModel = SuperHeroDetailsViewModel(view: self, result: self.heroDetails)
    /// Result object to store the super hero result
    var heroDetails: Result?
    
    /// Convenience initializer for receive the result data
    /// - Parameter data: result object
    func initWithData(data: Result) {
        self.heroDetails = data
    }
    
    /// View controller lifecycle method
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.configureView()
    }
    
    /// Action to show/hide biography of super hero
    /// - Parameter sender: any object
    @IBAction func ActionToShowAndHideBiography(_ sender: Any) {
        UIView.transition(with: self.biographyView, duration: 0.3, options: .transitionCrossDissolve, animations: {
            self.biographyView.isHidden = !self.biographyView.isHidden
        })
    }
    
    /// Action method to show/hide appearance
    /// - Parameter sender: any object
    @IBAction func ActionToShowAndHideAppearnce(_ sender: Any) {
        UIView.transition(with: self.appearnceView, duration: 0.3, options: .transitionCrossDissolve, animations: {
            self.appearnceView.isHidden = !self.appearnceView.isHidden
        })
    }
    
    /// Action method to sho/hide connections
    /// - Parameter sender: any object
    @IBAction func ActionToShowAndHideConnections(_ sender: Any) {
        UIView.transition(with: self.connectionView, duration: 0.3, options: .transitionCrossDissolve, animations: {
            self.connectionView.isHidden = !self.connectionView.isHidden
        })
    }
    
    /// Action method to show/hide work
    /// - Parameter sender: any object
    @IBAction func ActionToShowAndHideWork(_ sender: Any) {
        UIView.transition(with: self.workView, duration: 0.3, options: .transitionCrossDissolve, animations: {
            self.workView.isHidden = !self.workView.isHidden
        })
    }
}

/// Super hero details view protocol methods
extension SuperHeroDetailsViewController: SuperHeroDetailsView {
    /// Display the screen title
    /// - Parameter title: Title string
    func configureTitle(title: String) {
        self.title = title
    }
    
    /// Display hero image
    /// - Parameter image: image url
    func configureHeroImage(image: URL) {
        self.heroBlurImageView.sd_setImage(with: image, placeholderImage: SuperHeroImages.placeholder, options: .lowPriority) { (image, error, cacheType, url) in
            guard let image = image else {
                return
            }
            self.heroBlurImageView.image = image
            self.heroBlurImageView.addBlurEffect()
            self.heroImageView.image = image
        }
    }
    
    /// Display biography data
    /// - Parameter bio: biography object
    func configureBiography(bio: Biography) {
        self.heroFullNameLabel.text = bio.getFullName
        self.publisherLabel.text = "publisher".localized() + bio.getPublisher
        self.bioFullNameLabel.text = "fullname".localized() + bio.getFullName
        self.biopublisherLabel.text = "publisher".localized() + bio.getPublisher
        self.bioAlerEgosLabel.text = "alteregos".localized() + bio.getAlterEgos
        self.bioAliasesLabel.text = "aliases".localized() + bio.getAliases
        self.bioPOBLabel.text = "pob".localized() + bio.getPlaceOfBirth
        self.bioFirsAppearanceLabel.text = "first-appearance".localized() + bio.getFirstAppearance
    }
    
    /// Display apperance data
    /// - Parameter appearance: appearance object
    func configureAppearance(appearance: Appearance) {
        self.appearnceGenderLabel.text = "gender".localized() + appearance.getGender
        self.appearnceRaceLabel.text = "race".localized() + appearance.getRace
        self.appearnceHeightLabel.text = "height".localized() + appearance.getHeight
        self.appearnceWeightLabel.text = "weight".localized() + appearance.getWeight
        self.appearnceEyeColorLabel.text = "eye-color".localized() + appearance.getEyeColor
        self.appearnceHairColorLabel.text = "hair-color".localized() + appearance.getHairColor
    }
    
    /// Display connection data
    /// - Parameter connections: connection object
    func configureConnections(connections: Connections) {
        self.connectionGroupAffiliationLabel.text = "group-affiliation".localized() + connections.getGroupAffiliation
        self.connectionRelativesLabel.text = "relatives".localized() + connections.getRelatives
    }
    
    /// Display work data
    /// - Parameter work: work object
    func configureWork(work: Work) {
        self.workOccupationLabel.text = "occupation".localized() + work.getOccupation
        self.workBaseLabel.text = "base".localized() + work.getBase
    }
}
