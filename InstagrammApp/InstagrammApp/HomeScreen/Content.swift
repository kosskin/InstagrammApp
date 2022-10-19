//
//  Content.swift
//  InstagrammApp
//
//  Created by Валентин Коскин on 18.10.2022.
//

import Foundation

/// Struct for one content of Instagram
struct Content {
    private let text: String
    private let imageName: String
    private let likesCount: Int
    private let personName: String
    
    init(text: String, imageName: String, likesCount: Int, personName: String) {
        self.text = text
        self.imageName = imageName
        self.likesCount = likesCount
        self.personName = personName
    }
    
    func newContent (newContent: Content) -> (String, String, String, String) {
        return (newContent.text, newContent.imageName, newContent.personName,
                String(newContent.likesCount))
    }
}
