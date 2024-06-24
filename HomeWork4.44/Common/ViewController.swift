//
//  ViewController.swift
//  HomeWork4.44
//
//  Created by MacBook Pro on 22/6/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let simpleTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private let data: [Struct] = [
        Struct(image: "Ala-Kul", text: "Ala-Kul Lake", liltext: "3,532m height"),
        Struct(image: "Yssyk-Kol", text: "Yssyk-Kol Lake", liltext: "Depth 668m"),
        Struct(image: "Song-Kol", text: "Song-Kol Lake", liltext: "Elevation:3,016m")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTableView()
    }

    private func setupTableView() {
        view.addSubview(simpleTableView)
        simpleTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        simpleTableView.dataSource = self
        simpleTableView.delegate = self
        
        NSLayoutConstraint.activate([
            simpleTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            simpleTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            simpleTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            simpleTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.setData(data[indexPath.row])
        return cell
    }


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SecondViewController()
        vc.selectedItem = data[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}

