//
//  MycustomTableViewCell.swift
//  CustomCell
//
//  Created by COE-027 on 25/09/19.
//  Copyright © 2019 COE-027. All rights reserved.
//

import UIKit

class MycustomTableViewCell: UITableViewCell {

    @IBOutlet weak var imgview: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblEmail: UILabel!
    
    @IBOutlet weak var lblMobile: UILabel!
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
