//
//  ContentForARList.swift
//  GreenWeen
//
//  Created by Rem on 7.06.21.
//

import Foundation

struct ArList {
    let name: String
    let shortDiscription: String
    var title: String {
        "\(name) - \(shortDiscription)"
    }
}
extension ArList {
    static func getArList() -> [ArList] {
        [
        ArList(name: "Thuja", shortDiscription: "There is some description for thuja"),
            ArList(name: "Fir", shortDiscription: "Discription for Fir trees"),
            ArList(name: "Maple", shortDiscription: "Here is description for maples"),
            ArList(name: "Wisteria", shortDiscription: "Some description for wisteria"),
            ArList(name: "Forsythia", shortDiscription: "There is forsythia"),
            ArList(name: "Acacia", shortDiscription: "Here is acacia"),
            ArList(name: "Poplar", shortDiscription: "Welcome poplar"),
            ArList(name: "Cedar", shortDiscription: "Some cedar here"),
            ArList(name: "Linden", shortDiscription: "There are some Lendenes"),
            ArList(name: "Birch", shortDiscription: "The las is birch")
        ]
    }
}
