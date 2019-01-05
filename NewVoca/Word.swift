//
//  Word.swift
//  NewVoca
//
//  Created by Thao Doan on 1/3/19.
//  Copyright © 2019 Thao Doan. All rights reserved.
//

import Foundation

struct Word : Codable {
    var definition : String?
    var partOfSpeech: String?
    var synonyms : [String]?
    var typeOf : [String]?
    var hasTypes : [String]?
    var derivation : [String]?
    var examples : [String]?
}

struct Results : Codable {
    var results : [Word]?
}

struct JsonData: Codable {
    var syllables: Syllables?
    var pronunciation : Pronunciation?
    var results : Results?
    var word : String?
    var frequency : Double?
}

struct Pronunciation : Codable {
    var all : String?
}

struct Syllables : Codable {
    var count : Int?
    var list : [String]?
}

struct RandomWord : Codable {
    var word : String?
}
