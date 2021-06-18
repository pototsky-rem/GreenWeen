//
//  TableCollectionViewCell.swift
//  GreenWeen
//
//  Created by Rem on 17.06.21.
//

import UIKit

class TableCollectionViewCell: UICollectionViewCell {
    
    static let identifire = "TableCollectionViewCell"
    
    private let myLable: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(myLable)
        contentView.addSubview(myImageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = CGRect(x: 5,
                                   y: 5,
                                   width: contentView.frame.size.width - 5,
                                   height: contentView.frame.size.height - 55)
        myLable.frame = CGRect(x: 5,
                               y: contentView.frame.size.height - 50,
                               width: contentView.frame.size.width - 5,
                               height: 50)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with model: CollectionTableCellModel) {
        myLable.text = model.title
        myImageView.image = UIImage(named: model.imageName)
    }
}
