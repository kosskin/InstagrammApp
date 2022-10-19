//
//  HomeViewController.swift
//  InstagrammApp
//
//  Created by Валентин Коскин on 17.10.2022.
//

import UIKit

/// Screen Home 
final class HomeViewController: UIViewController {
    
    // MARK: Constants
    
    private enum Constants {
        static let contentOneText = "hi, I am contentOne"
        static let contentTwoText = "hi, I am contentTwo"
        static let contentThreeText = "hi, I am contentThree"
        static let contentFourText = "hi, I am contentFour"
        static let contentFiveText = "hi, I am contentFive"
        static let contentSixText = "hi, I am contentSix"
        static let personName = "InstaUser"
        static let miskuziImageName = "miskuzi"
        static let contentIndentifier = "ContentCell"
        static let historyCellIndentifier = "historyCell"
        static let recomendationCellIndentifier = "recomendationCell"
        static let emptyText = ""
        static let zeroLikes = 0
    }
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var homeTableView: UITableView!
    
    // MARK: UI Elements
    
    private var refresher = UIRefreshControl()

    // MARK: Private Properties
    
    private lazy var users = createContents()
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpRefrecher()
    }
    
    // MARK: Private Methods
    
    private func setUpRefrecher() {
        refresher.addTarget(self, action: #selector(goRefresh), for: .valueChanged)
        homeTableView.addSubview(refresher)
    }
    
    @objc private func goRefresh() {
        refresher.endRefreshing()
    }
    
    private func createContents() -> [Content] {
        var contents: [Content] = []
        
        let history = Content(text: Constants.emptyText, imageName: Constants.emptyText,
                              likesCount: Constants.zeroLikes, personName: Constants.emptyText)
        let contentOne = Content(text: Constants.contentOneText,
                                 imageName: Constants.miskuziImageName,
                                 likesCount: 555, personName: Constants.personName)
        let contentTwo = Content(text: Constants.contentTwoText,
                                 imageName: Constants.miskuziImageName,
                                 likesCount: 44, personName: Constants.personName)
        let contentThree = Content(text: Constants.contentThreeText,
                                 imageName: Constants.miskuziImageName,
                                   likesCount: 333, personName: Constants.personName)
        let contentFour = Content(text: Constants.contentFourText,
                                 imageName: Constants.miskuziImageName,
                                  likesCount: 22, personName: Constants.personName)
        let recomendation = Content(text: Constants.emptyText, imageName: Constants.emptyText,
                                    likesCount: Constants.zeroLikes, personName: Constants.emptyText)
        let contentFive = Content(text: Constants.contentFiveText,
                                 imageName: Constants.miskuziImageName,
                                  likesCount: 31, personName: Constants.personName)
        let contentSix = Content(text: Constants.contentSixText,
                                 imageName: Constants.miskuziImageName,
                                 likesCount: 412, personName: Constants.personName)
        contents.append(history)
        contents.append(contentOne)
        contents.append(contentTwo)
        contents.append(contentThree)
        contents.append(contentFour)
        contents.append(contentFive)
        contents.append(contentSix)
        
        return contents
    }
}

// MARK: UITableViewDelegate, UITableViewDataSource

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            guard let historyCell = tableView.dequeueReusableCell(withIdentifier:
                                                            Constants.historyCellIndentifier,
                                                           for: indexPath) as? HistoryCell
            else { return UITableViewCell() }
            return historyCell
            
        } else if indexPath.row == 4 {
            guard let recomendationCell = tableView.dequeueReusableCell(
                withIdentifier: Constants.recomendationCellIndentifier,
                for: indexPath) as? RecomendationCell
            else { return UITableViewCell() }
            return recomendationCell
            
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.contentIndentifier,
                                                           for: indexPath) as? ContentCell
            else { return UITableViewCell() }
            cell.contentNameLabel.text = users[indexPath.row].personName
            cell.contentImageView.image = UIImage(named: users[indexPath.row].imageName)
            cell.contentCommentLabel.text = users[indexPath.row].text
            cell.amountLikesLabel.text = "\(users[indexPath.row].likesCount)"

            return cell
        }
    }
}
