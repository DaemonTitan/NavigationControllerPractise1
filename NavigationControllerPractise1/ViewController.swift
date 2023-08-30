//
//  ViewController.swift
//  NavigationControllerPractise1
//
//  Created by Tony Chen on 8/4/2023.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var redButton: UIButton = {
        var redButton = UIButton()
        redButton.configuration = .tinted()
        redButton.configuration?.title = "Red"
        redButton.tintColor = .red
        redButton.titleLabel?.font = .systemFont(ofSize: 100, weight: .bold)
        redButton.translatesAutoresizingMaskIntoConstraints = false
        return redButton
    }()
    
    lazy var tealButton: UIButton = {
        var tealButton = UIButton()
        tealButton.configuration = .borderedTinted()
        tealButton.configuration?.title = "Teal"
        tealButton.tintColor = .systemTeal
        tealButton.titleLabel?.font = .systemFont(ofSize: 100, weight: .bold)
        tealButton.translatesAutoresizingMaskIntoConstraints = false
        return tealButton
    }()
    
    lazy var cyanButton: UIButton = {
        var cyanButton = UIButton()
        cyanButton.configuration = .plain()
        cyanButton.configuration?.title = "Cyan"
        cyanButton.tintColor = .systemCyan
        cyanButton.titleLabel?.font = .systemFont(ofSize: 100, weight: .bold)
        cyanButton.translatesAutoresizingMaskIntoConstraints = false
        return cyanButton
    }()
    
    lazy var indigoButton: UIButton = {
        var indigoButton = UIButton()
        indigoButton.configuration = .bordered()
        indigoButton.configuration?.title = "Indigo"
        indigoButton.tintColor = .systemIndigo
        indigoButton.titleLabel?.font = .systemFont(ofSize: 100, weight: .bold)
        indigoButton.translatesAutoresizingMaskIntoConstraints = false
        return indigoButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Home"
        navigationItem.backButtonTitle = ""
        
        view.addSubview(redButton)
        view.addSubview(tealButton)
        view.addSubview(cyanButton)
        view.addSubview(indigoButton)
        homeButtonLayout()
        
        redButton.addTarget(self, action: #selector(tapRedButton), for: .touchUpInside)
        tealButton.addTarget(self, action: #selector(tapTealButton), for: .touchUpInside)
        cyanButton.addTarget(self, action: #selector(tapTealButton), for: .touchUpInside)
        indigoButton.addTarget(self, action: #selector(tapIndigoButton), for: .touchUpInside)

    }

    func homeButtonLayout() {
        NSLayoutConstraint.activate([
            redButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200),
            redButton.heightAnchor.constraint(equalToConstant: 40),
            redButton.widthAnchor.constraint(equalToConstant: 100),
            
            tealButton.topAnchor.constraint(equalTo: redButton.bottomAnchor, constant: 50),
            tealButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tealButton.heightAnchor.constraint(equalToConstant: 40),
            tealButton.widthAnchor.constraint(equalToConstant: 100),
            
            cyanButton.topAnchor.constraint(equalTo: tealButton.bottomAnchor, constant: 50),
            cyanButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cyanButton.heightAnchor.constraint(equalToConstant: 40),
            cyanButton.widthAnchor.constraint(equalToConstant: 100),
            
            indigoButton.topAnchor.constraint(equalTo: cyanButton.bottomAnchor, constant: 50),
            indigoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            indigoButton.heightAnchor.constraint(equalToConstant: 40),
            indigoButton.widthAnchor.constraint(equalToConstant: 100),
        ])
    }
}

extension ViewController {
    @objc func tapRedButton() {
        let redViewController = RedViewController()
        navigationController?.pushViewController(redViewController, animated: true)
    }
    
    @objc func tapTealButton() {
        let tealViewController = TealViewController()
        navigationController?.pushViewController(tealViewController, animated: true)
    }
    
    @objc func tapCyanButton() {
        let cyanViewController = CyanViewController()
        navigationController?.pushViewController(cyanViewController, animated: true)
    }
    
    @objc func tapIndigoButton() {
        let indigoController = IndigoViewController()
        navigationController?.pushViewController(indigoController, animated: true)
    }
}

