//
//  ArticleViewController.swift
//  CultureTrip
//
//  Created by Charles Vu on 28/02/2021.
//

import UIKit

class ArticleViewController: UITableViewController {
    lazy var presenter = ArticlePresenter(view: self)

    override func viewDidLoad() {
        presenter.viewLoaded()
    }

    func reloadData() {
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.articleCount
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleCell") as! ArticleCell
        presenter.fillCell(cell, at: indexPath.row)
        return cell
    }
}
