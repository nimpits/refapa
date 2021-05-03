//
//  Section.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class Section: NSObject {
    let sectionName : String
    let priority : Int
    let completion : Int // Calculated on the go
    var topics : [Topic]!
    
    init(sectionName: String, priority: Int, completion: Int, topics: [Topic]) {
        self.sectionName = sectionName
        self.priority = priority
        self.completion = completion
        self.topics = topics
    }

}
