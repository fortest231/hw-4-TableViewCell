//
//  CustomTableViewCell.swift
//  HomeWork4.44
//
//  Created by MacBook Pro on 22/6/24.
//

import UIKit

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    private let cellView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let furnitureImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 16
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let liltext: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = .italicSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(cellView)
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: contentView.topAnchor),
            cellView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 2),
            cellView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -2),
            cellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -60),
            cellView.heightAnchor.constraint(equalToConstant: 190)
        ])
        
        cellView.addSubview(furnitureImage)
        NSLayoutConstraint.activate([
            furnitureImage.topAnchor.constraint(equalTo: cellView.topAnchor),
            furnitureImage.leadingAnchor.constraint(equalTo: cellView.leadingAnchor),
            furnitureImage.trailingAnchor.constraint(equalTo: cellView.trailingAnchor),
            furnitureImage.bottomAnchor.constraint(equalTo: cellView.bottomAnchor),
            furnitureImage.widthAnchor.constraint(equalToConstant: 400)
        ])
        
        contentView.addSubview(mainLabel)
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: cellView.bottomAnchor, constant: 8),
            mainLabel.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 0)
        ])
        
        contentView.addSubview(liltext)
        NSLayoutConstraint.activate([
            liltext.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 3),
            liltext.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0)
        ])
    }
    
    func setData(_ data: Struct) {
        furnitureImage.image = UIImage(named: data.image)
        mainLabel.text = data.text
        liltext.text = data.liltext
    }
}
