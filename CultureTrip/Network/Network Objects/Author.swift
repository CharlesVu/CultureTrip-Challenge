//
//  Author.swift
//  CultureTrip
//
//  Created by Charles Vu on 28/02/2021.
//

import Foundation

struct Author: Codable {
    enum CodingKeys: String, CodingKey {
        case id
        case name = "authorName"
        case avatar = "authorAvatar"
    }

    let id: String
    let name: String
    let avatar: AuthorAvatar
}
