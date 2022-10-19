//
//  Content.swift
//  InstagrammApp
//
//  Created by Валентин Коскин on 18.10.2022.
//

import Foundation

/// Struct for one content of Instagram
struct Content {
    var text: String
    var imageName: String
    var likesCount: Int
    var personName: String
    
    init(text: String, imageName: String, likesCount: Int, personName: String) {
        self.text = text
        self.imageName = imageName
        self.likesCount = likesCount
        self.personName = personName
    }
}
