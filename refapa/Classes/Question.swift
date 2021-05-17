//
//  Question.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class Question: NSObject, Codable {
    let questionText : String
    let points : Int
    let questionImage: ImageWithDescription
    var questionAnswer : [Answer]
    let isAnswered : Bool
    
    init(questionText: String, points: Int, questionImage : ImageWithDescription, questionAnswer: [Answer], isAnswered : Bool) {
        self.questionText = questionText
        self.points = points
        self.questionImage = questionImage
        self.questionAnswer = questionAnswer
        self.isAnswered = isAnswered
    }
    
}
