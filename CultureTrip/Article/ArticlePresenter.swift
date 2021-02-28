//
//  ArticlePresenter.swift
//  CultureTrip
//
//  Created by Charles Vu on 28/02/2021.
//

import Foundation
import PromiseKit

class ArticlePresenter {
    private var networkProxy = NetworkProxy()
    private weak var view: ArticleViewController?
    private var articles: [Article] = []

    public var articleCount: Int {
        return articles.count
    }

    public init(view: ArticleViewController) {
        self.view = view
    }

    public init(networkProxy: NetworkProxy,
                view: ArticleViewController) {
        self.networkProxy = networkProxy
        self.view = view
    }

    public func viewLoaded() {
        firstly {
            networkProxy.getArticles()
        }.done { articles in
            self.articles = articles
            self.view?.reloadData()
        }.catch { error in
            print(error)
        }
    }

    public func fillCell(_ cell: ArticleCell, at index: Int) {
        let article = articles[index]
        let subPresenter = ArticleCellPresenter(article: article)
        subPresenter.populateView(cell)
    }
}
