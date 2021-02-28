//
//  Article.swift
//  CultureTrip
//
//  Created by Charles Vu on 28/02/2021.
//

import Foundation

struct Article: Codable {
    let id: String
    let title: String
    let imageUrl: URL
    let isSaved: Bool
    let isLiked: Bool
    let likesCount: UInt
    let category: String
    let author: Author
}
