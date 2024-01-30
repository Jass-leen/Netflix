//
//  HeroHeaderView.swift
//  netflix clone
//
//  Created by 1 on 25/01/24.
//

import UIKit

class HeroHeaderView: UIView {
    
    private let playButton : UIButton = {
       let button = UIButton()
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 5
        button.setTitle("Play", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let dowloadButton : UIButton = {
       let button = UIButton()
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 5
        button.setTitle("Dowload", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let headerImageView : UIImageView = {
       let imageview = UIImageView()
        imageview.contentMode = .scaleAspectFill
        imageview.clipsToBounds = true
        imageview.image = UIImage(named: "heroImage")
        return imageview
    }()
    
    func addGradient(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.black.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
        
    }
    func addConstraints() {
        NSLayoutConstraint.activate([
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            playButton.widthAnchor.constraint(equalToConstant: 100),
            playButton.heightAnchor.constraint(equalToConstant: 50),
            dowloadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            dowloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            dowloadButton.widthAnchor.constraint(equalToConstant: 100),
            dowloadButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    override func layoutSubviews() {
        addSubview(headerImageView)
        addGradient()
        addSubview(playButton)
        addSubview(dowloadButton)
        headerImageView.frame = bounds
        
        addConstraints()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
