//
//  AuthorAvatar.swift
//  CultureTrip
//
//  Created by Charles Vu on 28/02/2021.
//

import Foundation

struct AuthorAvatar: Codable {
    enum CodingKeys: String, CodingKey {
        case url = "imageUrl"
    }
    let url: String
}
