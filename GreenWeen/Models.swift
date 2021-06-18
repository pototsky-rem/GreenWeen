//
//  Models.swift
//  GreenWeen
//
//  Created by Rem on 17.06.21.
//

import Foundation

enum CellModel {
    case collectionView(model: [CollectionTableCellModel], rows: Int)
    case list(model: [ListCellModel])
}

struct ListCellModel {
    let title: String
}

struct CollectionTableCellModel {
    let title: String
    let imageName: String
}
