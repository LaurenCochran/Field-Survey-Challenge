//
//  FieldSurveyLoader.swift
//  Field Survey
//
//  Created by Lauren on 2019-05-03.
//  Copyright © 2019 Lauren Cochran. All rights reserved.
//

import Foundation

class FieldSurveyLoader {
    
    class func load(jsonFileName: String) -> FieldSurveys? {
        var fieldSurvey: FieldSurveys?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            fieldSurvey = try? jsonDecoder.decode(FieldSurveys.self, from: jsonData)
        }
        
        return fieldSurvey
    }
}
