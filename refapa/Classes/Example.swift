//
//  Example.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class Example: NSObject, Codable {
    var examples = [ImageWithDescription]()
    
    init(examples: [ImageWithDescription]) {
        self.examples = examples
    }

}
