//
//  NewsFile.swift
//  JSON Demo
//
//  Created by gunseli sevinc on 24.08.2020.
//  Copyright © 2020 gunseli sevinc. All rights reserved.
//

import Foundation

struct NewsFeed: Codable {
    
    var status:String = ""
    var totalResults:Int = 0
    var articles:[Article]?
}
