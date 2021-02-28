//
//  ArticleCellPresenter.swift
//  CultureTrip
//
//  Created by Charles Vu on 28/02/2021.
//

import Foundation

struct ArticleCellPresenter {
    let article: Article

    func populateView(_ view: ArticleCell) {
        view.set(title: article.title)
            .set(imageURL: article.imageUrl)
            .set(author: article.author.name)
            .set(category: article.category)
            .set(likesCount: String(article.likesCount))

        if article.isSaved {
            view.showSaved()
        } else {
            view.hideSaved()
        }

        if article.isLiked {
            view.showLike()
        } else {
            view.hideLike()
        }
    }
}
