//
//  PostData.swift
//  Sur News
//
//  Created by User on 11/14/20.
//  Copyright © 2020 huseynova. All rights reserved.
//

import Foundation


struct Results: Decodable {
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
