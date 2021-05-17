//
//  Reference.swift
//  refapa
//
//  Created by Abraham Haros on 16/05/21.
//

import UIKit

class Reference: NSObject {
    let referenceName : String
    let priority : Int
    var sections : [Section]!
    let referenceImage : UIImage!
    
    init(referenceName: String, priority: Int, sections: [Section], referenceImage: UIImage!) {
        self.referenceName = referenceName
        self.priority = priority
        self.sections = sections
        self.referenceImage = referenceImage
    }
}
