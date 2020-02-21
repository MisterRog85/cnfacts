//
//  GetFactModelProtocol.swift
//  CNFacts
//
//  Created by William Tomas on 21/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation

public protocol GetFactModelProtocol {
    var id: String? {get}
    var fact: String? {get}
    var date: String?{get}
    var vote: String? {get}
    var points: String? {get}
}
