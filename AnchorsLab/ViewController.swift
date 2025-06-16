//
//  ViewController.swift
//  AnchorsLab
//
//  Created by Alexis Horteales Espinosa on 15/06/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews(){
        let uppeerLeftLabel = makeLabel(withText: "upperLeft")
        let upperRightLabel = makeLabel(withText: "upperRight")
        let bottomLeftLabel = makeSecondaryLabel(withText: "lowerLeft")
        let buttonRight = makeButton(withText: "Pay Bill")
        
        //view red
        let redView = makeView()
        
        view.addSubview(uppeerLeftLabel)
        view.addSubview(upperRightLabel)
        view.addSubview(bottomLeftLabel)
        view.addSubview(buttonRight)
        view.addSubview(redView)
        ///upper left
        uppeerLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        uppeerLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 8).isActive = true
        
        //challenge -> Put a label in the upper right time corner (padding of 8pts top and right)
        
        ///upper right
        upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        upperRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        ///botton left
        bottomLeftLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        bottomLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 8).isActive = true
        
        ///button right
        buttonRight.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        buttonRight.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        ///view red
        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        ///option 1: size explicitly
//        redView.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        redView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        ///option 2:  size dinamically (pinning)
        ///width
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        ///height
        redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        redView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100).isActive = true
    }
    
    func makeLabel(withText text: String) -> UILabel{
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        return label
    }
    
    func makeSecondaryLabel(withText text: String) -> UILabel{
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .yellow
        label.text = text
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .gray
        return label
    }
    
    func makeButton(withText text: String) -> UIButton{
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.backgroundColor = .blue
        return button
    }
    
    func makeView() -> UIView{
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }

}

