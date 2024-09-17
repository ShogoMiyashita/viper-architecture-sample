//
//  MainViewController.swift
//  ViperArchitectureSample
//
//  Created by shogo.miyashita on 2024/09/08.
//

import UIKit

class MainViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let pokemonListVC = UIStoryboard(name: "PokemonList", bundle: nil).instantiateViewController(withIdentifier: "PokemonListViewController")
        let favoriteListVC = UIStoryboard(name: "FavoriteList", bundle: nil).instantiateViewController(withIdentifier: "FavoriteListViewController")

        pokemonListVC.tabBarItem = UITabBarItem(title: "一覧", image: UIImage(), tag: 0)
        favoriteListVC.tabBarItem = UITabBarItem(title: "お気に入り", image: UIImage(), tag: 1)

        viewControllers = [pokemonListVC, favoriteListVC]
    }
}
