//
//  RedViewController.swift
//  NavigationControllerPractise1
//
//  Created by Tony Chen on 8/4/2023.
//

import UIKit

class RedViewController: UIViewController {
    
    lazy var blueButton: UIButton = {
        var blueButton = UIButton()
        blueButton.configuration = .plain()
        blueButton.configuration?.title = "Blue"
        blueButton.tintColor = .blue
        blueButton.titleLabel?.font = .systemFont(ofSize: 100, weight: .bold)
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        return blueButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(blueButton)
        title = "Red Screen"
        view.backgroundColor = .systemRed
        
        NSLayoutConstraint.activate([
            blueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            blueButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200),
            blueButton.heightAnchor.constraint(equalToConstant: 40),
            blueButton.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        blueButton.addTarget(self, action: #selector(tapBlueScreen), for: .touchUpInside)
    }
    
    @objc func tapBlueScreen() {
        let blueViewController = BlueViewController()
        navigationController?.pushViewController(blueViewController, animated: true)
    }
    
    @objc func back() {
        
    }
    
}

