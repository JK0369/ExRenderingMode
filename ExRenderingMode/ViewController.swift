//
//  ViewController.swift
//  ExRenderingMode
//
//  Created by 김종권 on 2022/12/18.
//

import UIKit

class ViewController: UIViewController {
    private let imageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "myImage")?.withRenderingMode(.alwaysTemplate)
        view.tintColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
