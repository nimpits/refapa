//
//  Lesson.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class Lesson: NSObject, Codable {
    let lessonName : String
    var completed : Bool // if quiz == 100 completed = true
    let lessonStructure: LessonStructure
    var lessonDescription = [ImageWithDescription]()
    let lessonExample : Example
    let lessonQuiz : Quiz!
    
    init(lessonName: String, completed: Bool, lessonStructure: LessonStructure, lessonDescription: [ImageWithDescription], lessonExample: Example, lessonQuiz: Quiz!) {
        self.lessonName = lessonName
        self.completed = completed
        self.lessonStructure = lessonStructure
        self.lessonDescription = lessonDescription
        self.lessonExample = lessonExample
        self.lessonQuiz = lessonQuiz
    }
}
