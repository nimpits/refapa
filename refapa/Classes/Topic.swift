//
//  Topic.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class Topic: NSObject {
    let topicName : String
    let topicDescription: String
    let imgFoto : UIImage!
    let priority: Int
    var completion : Int // calculated on the go
    var lessons = [Lesson]()
    
    init(topicName: String, topicDescription: String, imgFoto: UIImage!, priority: Int, completion: Int, lessons: [Lesson]) {
        self.topicName = topicName
        self.topicDescription = topicDescription
        self.imgFoto = imgFoto
        self.priority = priority
        self.completion = completion
        self.lessons = lessons
    }
}
