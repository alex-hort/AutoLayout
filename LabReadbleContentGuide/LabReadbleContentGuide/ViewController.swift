//
//  ViewController.swift
//  LabReadbleContentGuide
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
//        let redView = UIView()
//        redView.translatesAutoresizingMaskIntoConstraints = false
//        redView.backgroundColor = .red
        
        let label = makeLabel(withText: "Joe Goldberg is no stranger to hiding bodies. In the past ten years, this thirty-something has buried four of them, collateral damage in his quest for love. Now he’s heading west to Los Angeles, the city of second chances, determined to put his past behind him.In Hollywood, Joe blends in effortlessly with the other young upstarts. He eats guac, works in a bookstore, and flirts with a journalist neighbor. But while others seem fixated on their own reflections, Joe can’t stop looking over his shoulder. The problem with hidden bodies is that they don’t always stay that way. They re-emerge, like dark thoughts, multiplying and threatening to destroy what Joe wants most: true love. And when he finds it in a darkened room in Soho House, he’s more desperate than ever to keep his secrets buried. He doesn’t want to hurt his new girlfriend—he wants to be with her forever. But if she ever finds out what he’s done, he may not have a choice... Joe Goldberg is ready for a change. Instead of selling books, he’s writing them. And he’s off to a good start. Glenn Shoddy, an acclaimed literary author, recognizes Joe’s genius and invites him to join a tight-knit writing fellowship at Harvard. Finally, Joe will be in a place where talent matters more than pedigree... where intellect is the great equalizer and anything is possible. Even happy endings. Or so he thinks, until he meets his already-published, already-distinguished peers, who all seem to be cut from the same elitist cloth.Thankfully, Wonder Parish enters the picture. They have so much in common. No college degrees, no pretensions, no stories from prep school or grad school. Just a love for literature. If only Wonder could commit herself to the writing life, they could be those rare literary soulmates who never fall prey to their demons. Wonder has a tendency to love, to covet, but Joe is a believer in the rule of fiction: If you want to write a book, you have to kill your darlings.")
        
//        view.addSubview(redView)
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.readableContentGuide.topAnchor),
            label.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor),
            label.bottomAnchor.constraint(equalTo: view.readableContentGuide.bottomAnchor)
        ])
        
    }
    
    func makeLabel(withText text: String) -> UILabel{
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 20)
        
        return label
    }


}

