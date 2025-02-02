//
//  SceneDelegate.swift
//  AppOfThrones
//
//  Created by Sotronic on 13/11/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let episodeViewController = EpisodeViewController()
        let castViewController = CastViewController()
        let houseViewController = HouseViewController()
        let settingsViewController = SettingsViewController()
        
        
        episodeViewController.tabBarItem = UITabBarItem.init(title: "Seassons", image: UIImage.init(systemName: "film.fill"), tag: 0)
        castViewController.tabBarItem = UITabBarItem.init(title: "Cast", image: UIImage.init(systemName: "person.3.fill"), tag: 1)
        houseViewController.tabBarItem = UITabBarItem.init(title: "House", image: UIImage.init(systemName: "shield.lefthalf.fill"), tag: 2)
        settingsViewController.tabBarItem = UITabBarItem.init(title: "Settings", image: UIImage.init(systemName: "gear"), tag: 3)
        
        let navigationEpisodeViewController = UINavigationController.init(rootViewController: episodeViewController)
        let navigationCastViewController = UINavigationController.init(rootViewController: castViewController)
        let navigationHouseViewController = UINavigationController.init(rootViewController: houseViewController)
        let navigationSettingsViewController = UINavigationController.init(rootViewController: settingsViewController)
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [navigationEpisodeViewController, navigationCastViewController, navigationHouseViewController, navigationSettingsViewController]
        tabBarController.tabBar.barStyle = .black
        tabBarController.tabBar.isTranslucent = true
        tabBarController.tabBar.tintColor = UIColor.init(red: 235/255, green: 172/255, blue: 38/255, alpha: 1.0)
        
        UINavigationBar.appearance().overrideUserInterfaceStyle = .dark
        UINavigationBar.appearance().isTranslucent = true
        UINavigationBar.appearance().tintColor = UIColor.init(red: 235/255, green: 172/255, blue: 38/255, alpha: 1.0)
       
        window = UIWindow.init(frame: windowScene.coordinateSpace.bounds)
        //tamaño de la ventana
        window?.windowScene = windowScene
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        //se hace visible la ventana
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

