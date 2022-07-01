//
//  PostData.swift
//  H4X0R News
//
//  Created by Nelson Gou on 7/1/22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    let title: String
    let url: String?
    let points: Int
    let objectID: String
    
    var id: String {
        return objectID
    }
}
