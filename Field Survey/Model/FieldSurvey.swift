//
//  FieldSurvey.swift
//  Field Survey
//
//  Created by Lauren on 2019-05-03.
//  Copyright © 2019 Lauren Cochran. All rights reserved.
//

import Foundation

enum Classification: String, Codable {
    case bird
    case amphibian
    case reptile
    case insect
    case fish
    case plant
    case mammal
}

struct FieldSurvey: Codable {
    var classification: Classification
    var title: String
    var description: String
    var date: Date
}

struct FieldSurveys: Codable {
    var status: String
    var observations: [FieldSurvey]
}
