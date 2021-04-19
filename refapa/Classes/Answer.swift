//
//  Answer.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class Answer: NSObject, Codable{
    let isCorrect: Bool
    let answerText: String
    
    init(isCorrect: Bool, answerText: String) {
        self.isCorrect = isCorrect
        self.answerText = answerText
    }
}
