//
//  MainApp.swift
//  refapa
//
//  Created by user190180 on 5/17/21.
//

import UIKit

class MainApp: NSObject, Codable {
    var title: String
    var appDescription: String
    var references: [Reference]
    
    init(title: String, appDescription: String, references: [Reference]) {
        self.title = title
        self.appDescription = appDescription
        self.references = references
    }
    
}
