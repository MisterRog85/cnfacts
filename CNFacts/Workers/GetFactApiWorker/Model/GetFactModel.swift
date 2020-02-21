//
//  GetFactModel.swift
//  CNFacts
//
//  Created by William Tomas on 21/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation

struct GetFactModel: GetFactModelProtocol, Codable {
    var id: String?
    var fact: String?
    var date: String?
    var vote: String?
    var points: String?
    
    enum CodingKeys: String, CodingKey {
        case fact
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let data = try values.decode(Data.self, forKey: .fact)
        fact = String(data: data, encoding: .ascii)
    }
}
