//
//  CostomCell.swift
//  WorkPractice
//
//  Created by 수리 on 10/05/2019.
//  Copyright © 2019 수리. All rights reserved.
//

import UIKit

class CostomCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPoint: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
