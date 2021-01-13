//
//  AppCoordinator.swift
//  Wheather
//
//  Created by Anton Sleptsov on 13.01.2021.
//

import UIKit

class AppCoordinator {
    
    private (set) var rootViewController: UIViewController
    private (set) var topViewController: UIViewController?
    
    init(with viewController: UIViewController) {
        self.rootViewController = viewController
    }
    
    func showOnboarding() {
        let onboardingVC = OnboardingViewController()
        topViewController = onboardingVC
    }
    
    func showPlacesList() {
        let placesViewController = PlacesListViewController()
        topViewController = placesViewController
    }
    
    func showPlaceDetails() {
        let placeDetailsViewController = PlaceDetailsViewController()
        topViewController = placeDetailsViewController
    }
    
}
