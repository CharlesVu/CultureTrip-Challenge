//
//  ArticleCell.swift
//  CultureTrip
//
//  Created by Charles Vu on 28/02/2021.
//

import UIKit
import AlamofireImage

class ArticleCell: UITableViewCell {
    @IBOutlet private weak var titleLabel: UILabel?
    @IBOutlet private weak var articleImageView: UIImageView?
    @IBOutlet private weak var bookmarkLabel: UILabel?
    @IBOutlet private weak var categoryLabel: UILabel?
    @IBOutlet private weak var authorLabel: UILabel?
    @IBOutlet private weak var likeLabel: UILabel?
    @IBOutlet private weak var likeCountLabel: UILabel?

    @discardableResult
    func set(title: String) -> ArticleCell {
        titleLabel?.text = title
        return self
    }

    @discardableResult
    func set(imageURL: URL?) -> ArticleCell {
        guard let imageURL = imageURL else {
            articleImageView?.image = nil
            return self
        }
        articleImageView?.af.setImage(withURL: imageURL)
        return self
    }

    @discardableResult
    func showSaved() -> ArticleCell {
        bookmarkLabel?.font = UIFont(name: "FontAwesome5Free-Solid", size: 23)
        return self
    }

    @discardableResult
    func hideSaved() -> ArticleCell {
        bookmarkLabel?.font = UIFont(name: "FontAwesome5Free-Regular", size: 23)
        return self
    }

    @discardableResult
    func set(category: String) -> ArticleCell {
        categoryLabel?.text = category
        return self
    }

    @discardableResult
    func set(author: String) -> ArticleCell {
        authorLabel?.text = author
        return self
    }

    @discardableResult
    func showLike() -> ArticleCell {
        likeLabel?.font = UIFont(name: "FontAwesome5Free-Solid", size: 23)
        likeLabel?.textColor = UIColor.systemRed
        return self
    }

    @discardableResult
    func hideLike() -> ArticleCell {
        likeLabel?.font = UIFont(name: "FontAwesome5Free-Regular", size: 23)
        likeLabel?.textColor = UIColor.systemGray
        return self
    }

    @discardableResult
    func set(likesCount: String) -> ArticleCell {
        likeCountLabel?.text = likesCount
        return self
    }
}
