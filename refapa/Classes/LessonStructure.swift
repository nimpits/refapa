//
//  LessonStructure.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class LessonStructure: NSObject {

    let lessonDescription : String
    var examples = [ImageWithDescription]()
    
    init(lessonDescription : String, examples : [ImageWithDescription]) {
        self.lessonDescription = lessonDescription
        self.examples = examples
    }
}
