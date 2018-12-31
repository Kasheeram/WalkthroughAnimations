//
//  ViewController.swift
//  WalkthroughAnimations
//
//  Created by kashee on 31/12/18.
//  Copyright © 2018 kashee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // setup UI
    let titleLabel = UILabel()
    let bodyLabel = UILabel()
    
    fileprivate func setLabels() {
        titleLabel.numberOfLines = 0
        bodyLabel.numberOfLines = 0
        titleLabel.text = "Welcome To Futural point"
        titleLabel.font = UIFont(name: "Futura", size: 34)
        bodyLabel.text = "We are the one stop one to one communation, thanks for download the app also please give us a better rating us on App Store."
    }
    
    fileprivate func setupStackView() {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, bodyLabel])
        stackView.axis = .vertical
        stackView.spacing = 8
        view.addSubview(stackView)
        
        // enable autolayout constraints
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant:-100).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setLabels()
        setupStackView()
        
        // fun animation
    
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapAnimations)))
        
    }
    
    @objc fileprivate func  handleTapAnimations() {
        print("Animatios")
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            
            self.titleLabel.transform = CGAffineTransform(translationX: -30, y: 0)
            
        }) { (_) in
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.titleLabel.alpha = 0
                self.titleLabel.transform = self.titleLabel.transform.translatedBy(x: 0, y: -200)
                
            })
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            
            self.bodyLabel.transform = CGAffineTransform(translationX: -30, y: 0)
            
        }) { (_) in
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.bodyLabel.alpha = 0
                self.bodyLabel.transform = self.bodyLabel.transform.translatedBy(x: 0, y: -220)
                
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

