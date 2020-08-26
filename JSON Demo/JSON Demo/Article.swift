//
//  Article.swift
//  JSON Demo
//
//  Created by gunseli sevinc on 24.08.2020.
//  Copyright © 2020 gunseli sevinc. All rights reserved.
//

import Foundation

struct Article: Codable {
    
    var author:String?
    var title:String?
    var description:String?
    var url:String?
    var urlToImage:String?
    var publishedAt:String?
    var content:String?
}
