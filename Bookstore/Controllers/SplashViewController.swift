//
//  SplashViewController.swift
//  Bookstore
//
//  Created by Vladyslav Taranenko on 17.03.2022.
//

import UIKit
import SnapKit

class SplashViewController: UIViewController {
    
    // UI
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.alwaysBounceVertical = true
        scrollView.backgroundColor = UIColor(red: 133/255, green: 153/255, blue: 255/255, alpha: 1)
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let view = UIView()
        return view
    }()
    
    private lazy var illustration: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 36, weight: .black)
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 18)
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var startButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 21/255, green: 30/255, blue: 71/255, alpha: 1)
        button.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.contentEdgeInsets = UIEdgeInsets(top: 24, left: 115, bottom: 24, right: 115)
        button.layer.cornerRadius = 10
        return button
    }()
    
    private lazy var captionLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 18)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        illustration.image = UIImage(named: "illustration.svg")
        titleLabel.text = "Read your favourite book from here."
        subtitleLabel.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
        startButton.setTitle("Get Started", for: .normal)
        captionLabel.text = "Already have an account? Login"
        
        layout()
    }
}

extension SplashViewController {
    private func layout() {
        
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(view)
        }
        
        contentView.addSubview(illustration)
        illustration.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(72)
            make.left.right.equalToSuperview().inset(25)
        }
        
        contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.bottom.equalTo(illustration).offset(164)
            make.left.right.equalToSuperview().inset(25)
        }
        
        contentView.addSubview(subtitleLabel)
        subtitleLabel.snp.makeConstraints { make in
            make.bottom.equalTo(titleLabel).offset(64)
            make.left.right.equalToSuperview().inset(25)
        }
        
        view.addSubview(startButton)
        startButton.snp.makeConstraints { make in
            make.top.equalTo(subtitleLabel).offset(90)
            make.left.right.equalToSuperview().inset(25)
        }
        
        contentView.addSubview(captionLabel)
        captionLabel.snp.makeConstraints { make in
            make.bottom.equalTo(startButton).offset(42)
            make.left.right.equalToSuperview().inset(25)
        }
    }
}
