//
//  ImageWithDescription.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class ImageWithDescription: NSObject {
    var imgDescription : String
    let imgFoto : UIImage!
    
    init(imgDescription: String, imgFoto: UIImage!) {
        self.imgDescription = imgDescription
        self.imgFoto = imgFoto
    }
}
