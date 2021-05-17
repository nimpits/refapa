//
//  ImageWithDescription.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class ImageWithDescription: NSObject, Codable {
    var imgDescription : String!
    let imgFoto : String?
    
    init(imgDescription: String, imgFoto: String?) {
        self.imgDescription = imgDescription
        self.imgFoto = imgFoto
    }
    
    func getImage() -> UIImage? {
        if imgFoto != nil {
            return UIImage(named: imgFoto!)
        }
        return nil
    }
}
