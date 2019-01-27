//
//  MovieCell.swift
//  Flix
//
//  Created by Alex Rich on 1/14/19.
//  Copyright © 2019 Alex Rich. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
