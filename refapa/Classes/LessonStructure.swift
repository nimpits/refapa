//
//  LessonStructure.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class LessonStructure: NSObject {
    var examples = [ImageWithDescription]()
    
    init(examples : [ImageWithDescription]) {
        self.examples = examples
    }
}
