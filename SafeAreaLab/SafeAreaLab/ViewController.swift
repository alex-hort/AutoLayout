//
//  ViewController.swift
//  SafeAreaLab
//
//  Created by Alexis Horteales Espinosa on 17/06/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews(){
        let topLabel = makeLabel(withText: "top")
        let bottomLabel = makeLabel(withText: "bottom")
        
        let leadingLabel = makeLabel(withText: "leading")
        let trailingLabel = makeLabel(withText: "trailing")
        
        
        view.addSubview(topLabel)
        view.addSubview(bottomLabel)
        view.addSubview(leadingLabel)
        view.addSubview(trailingLabel)
        
        //constrains to topLabel alone
//        topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
//        topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        //add bottom Label
//        bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -8),
//        bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        ///challenge: Add 8pt spacing to the top and bottom label
//        bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -8).isActive = true
        ///just add constant = 8 to top and -8 to the bottom
        ///
        
        //constrainst togethher
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -8),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            
            leadingLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor , constant: 8),
            leadingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            trailingLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor  , constant: -8),
            trailingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func makeLabel(withText text: String) -> UILabel{
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        label.font = UIFont.systemFont(ofSize: 22)
        return label
    }

}

