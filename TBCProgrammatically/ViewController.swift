//
//  ViewController.swift
//  TBCProgrammatically
//
//  Created by Franco Rodrigues on 4/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
//        self.tabBarController?.tabBar.isTranslucent = true
//        UITabBar.appearance().clipsToBounds = true
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
    }
    
    @objc func didTapButton() {
        // Created and presnext tab bar controller
        let tabBarVC = UITabBarController()
        
        let vc1 = UINavigationController(rootViewController: FirstViewController())
        let vc2 = UINavigationController(rootViewController: SecondViewController())
        let vc3 = UINavigationController(rootViewController: ThirdViewController())
        let vc4 = UINavigationController(rootViewController: FourthViewController())
        let vc5 = UINavigationController(rootViewController: FifthViewController())
        
        vc1.title = "Home"
        vc2.title = "Search"
        vc3.title = "Profile"
        vc4.title = "Favorites"
        vc5.title = "Settings"
        
        tabBarVC.setViewControllers([vc1, vc2,vc3,vc4,vc5], animated: false)
        

        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        let images = ["house", "magnifyingglass", "person.circle", "star", "gear"]
        
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        
        tabBarVC.tabBar.isTranslucent = true
//        tabBarVC.tabBar.isOpaque = true
        // Change background color of the Bar
        tabBarVC.tabBar.backgroundColor = .white
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }
}
class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = "Home"
    }
    
}

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = "Search"
    }
    
}

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        title = "Profile"
    }
    
}

class FourthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        title = "Favorites"
    }
    
}

class FifthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        title = "Settings"
    }
    
}
