//
//  Reference.swift
//  refapa
//
//  Created by Abraham Haros on 16/05/21.
//

import UIKit

class Reference: NSObject, Codable {
    let referenceName : String
    let priority : Int
    var sections : [Section]!
    let referenceImage : UIImage!
    
    init(referenceName: String, priority: Int, sections: [Section], referenceImage: String) {
        self.referenceName = referenceName
        self.priority = priority
        self.sections = sections
        self.referenceImage = UIImage(named: referenceImage)
    }
    
    func encode(to encoder: Encoder) throws {
        
    }
}
