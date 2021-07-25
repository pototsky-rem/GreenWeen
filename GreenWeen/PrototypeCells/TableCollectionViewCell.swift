//
//  TableCollectionViewCell.swift
//  GreenWeen
//
//  Created by Rem on 17.06.21.
//

import UIKit
import Hero

class TableCollectionViewCell: UICollectionViewCell {
    
    static let identifire = "TableCollectionViewCell"
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(myImageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = contentView.bounds
        myImageView.contentMode = .scaleAspectFill
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with model: CollectionTableCellModel) {
        myImageView.image = UIImage(named: model.imageName)
        myImageView.hero.id = model.imageName
    }
}
