//
//  ContentCell.swift
//  InstagrammApp
//
//  Created by Валентин Коскин on 18.10.2022.
//

import UIKit

/// Class describe Content cell in HomeTableView
final class ContentCell: UITableViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var contentNameLabel: UILabel!
    @IBOutlet private weak var contentImageView: UIImageView!
    @IBOutlet private weak var contentCommentLabel: UILabel!
    @IBOutlet private weak var amountLikesLabel: UILabel!
    
    func updateData(currentCell: Content) {
        let (commentText, image, userName, likesCount) = currentCell.newContent(newContent: currentCell)
        
        self.contentCommentLabel.text = commentText
        self.contentImageView.image = UIImage(named: image)
        self.contentNameLabel.text = userName
        self.amountLikesLabel.text = likesCount
    }
}
