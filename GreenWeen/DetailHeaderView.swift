//
//  DetailHeaderView.swift
//  GreenWeen
//
//  Created by Rem on 21.06.21.
//

import UIKit

class DetailHeaderView: UITableViewHeaderFooterView {
    
    static let identifire = "DetailHeaderView"
    
    let title = UILabel()

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configureContents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureContents() {
        title.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        title.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(title)
        
        NSLayoutConstraint.activate([
            title.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
            title.widthAnchor.constraint(equalToConstant: 170),
            title.heightAnchor.constraint(equalToConstant: 30),
            title.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
}
