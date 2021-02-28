//
//  NetworkProxy.swift
//  CultureTrip
//
//  Created by Charles Vu on 28/02/2021.
//

import UIKit
import PMKAlamofire
import PromiseKit
import Alamofire

class NetworkProxy {
    func getArticles() -> Promise<[Article]> {
        let globalDispatchQueue = DispatchQueue.global()

        return firstly {
            AF.request(Constants.endpoint).responseData()
        }.map(on: globalDispatchQueue) { data, response in
            let response = try JSONDecoder().decode(EndpointResponse.self, from: data)
            return response.data
        }
    }
}
