//
//  FieldSurveyJSONLoader.swift
//  Filed Survey
//
//  Created by 来思良 on 2017/11/3.
//  Copyright © 2017年 Yuzhou He. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader{
    
    class func load(fileName:String) -> [FieldSurvey]{
        var observations = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            observations = FieldSurveyJSONParser.parse(data)
        }
        
        return observations
    }
    
}
