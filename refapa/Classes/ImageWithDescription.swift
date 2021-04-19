//
//  ImageWithDescription.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class ImageWithDescription: NSObject {
    let description : String
    let imgFoto : UIImage!
    
    init(description: String, imgFoto: UIImage!) {
        self.description = description
        self.imgFoto = imgFoto
    }
}
