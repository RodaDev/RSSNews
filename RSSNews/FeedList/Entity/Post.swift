//
//  Post.swift
//  RSSNews
//
//  Created by Rodevelop on 10.10.2021.
//

import SwiftUI

struct Post: Identifiable, Hashable {
    var id = UUID().uuidString
    var imageURL: String
    var title: String = ""
    var descript: String = "Standart description"
}
