//
//  SecondViewController.swift
//  HomeWork4.44
//
//  Created by MacBook Pro on 21/2/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    var selectedItem: Struct?
    
    private let mainImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "LazyChair")
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Fabric Lazy Chair"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let stars: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "stars")
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let price: UILabel = {
        let price = UILabel()
        price.text = "230$"
        price.textColor = .blue
        price.font = UIFont.boldSystemFont(ofSize: 20)
        price.translatesAutoresizingMaskIntoConstraints = false
        return price
    }()
    
    private let productDetailsLabel: UILabel = {
        let label = UILabel()
        label.text = "Product Details"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 25)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let groupText: UILabel = {
        let label = UILabel()
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 8
        
        let attributedText = NSMutableAttributedString(string: "Room type \nColor \nMaterial \nDimensions \nWeight")
        
        attributedText.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attributedText.length))
        label.attributedText = attributedText
        
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .lightGray
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let groupText2: UILabel = {
        let label = UILabel()
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 8
        
        let attributedText = NSMutableAttributedString(string: "Office, living Room \nYellow \nTextile, Velvet, Cotton \n25.5 x 31.5 x 47.3 inches \n20 Pounds")
        
        attributedText.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attributedText.length))
        label.attributedText = attributedText
        
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .black
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let buyButton: UIButton = {
        let button = UIButton()
        button.setTitle("Buy", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        
        view.addSubview(mainImage)
        NSLayoutConstraint.activate([
            mainImage.topAnchor.constraint(equalTo: view.topAnchor),
            mainImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4)
        ])
        
        view.addSubview(mainLabel)
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 42),
            mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
        
        view.addSubview(stars)
        NSLayoutConstraint.activate([
            stars.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 8),
            stars.widthAnchor.constraint(equalToConstant: 90),
            stars.heightAnchor.constraint(equalToConstant: 35),
            stars.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32)
        ])
        
        view.addSubview(price)
        NSLayoutConstraint.activate([
            price.topAnchor.constraint(equalTo: stars.bottomAnchor, constant: 16),
            price.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
        
        view.addSubview(productDetailsLabel)
        NSLayoutConstraint.activate([
            productDetailsLabel.topAnchor.constraint(equalTo: price.bottomAnchor, constant: 27),
            productDetailsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            productDetailsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        
        view.addSubview(groupText)
        NSLayoutConstraint.activate([
            groupText.topAnchor.constraint(equalTo: productDetailsLabel.bottomAnchor, constant: 9),
            groupText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
        
        view.addSubview(groupText2)
        NSLayoutConstraint.activate([
            groupText2.topAnchor.constraint(equalTo: productDetailsLabel.bottomAnchor, constant: 9),
            groupText2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 165)
        ])
        
        view.addSubview(buyButton)
        NSLayoutConstraint.activate([
            buyButton.topAnchor.constraint(equalTo: groupText.bottomAnchor, constant: 40),
            buyButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buyButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            buyButton.heightAnchor.constraint(equalToConstant: 50),
            buyButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
