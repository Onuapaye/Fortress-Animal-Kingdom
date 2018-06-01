//
//  AnimalsTableViewCell.swift
//  Fortress Animals
//
//  Created by epita on 31/05/2018.
//  Copyright © 2018 Fortress Bismark. All rights reserved.
//

import UIKit

class AnimalsTableViewCell: UITableViewCell {

    //creation of variables to the tableViewCell
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalClassLabel: UILabel!
    @IBOutlet weak var animalMotilityLabel: UILabel!
    @IBOutlet weak var animalPhotoImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
