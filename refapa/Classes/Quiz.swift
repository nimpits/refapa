//
//  Quiz.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class Quiz: NSObject {
    let grade : Double
    var questions = [Question]()
  
    // Posiblemente se agrege fecha del quiz ?

    init(grade: Double, questions: [Question]) {
        self.grade = grade
        self.questions = questions
        
    }
    
    // Pendiente: Codificar grader()
}
