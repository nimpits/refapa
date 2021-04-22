//
//  ImageWithDescriptionTableViewCell.swift
//  refapa
//
//  Created by user190180 on 4/21/21.
//

import UIKit

class ImageWithDescriptionTableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lbDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
