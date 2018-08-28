//
//  MemberTableViewCell.swift
//  Demo2
//
//  Created by Chi-Che Hsieh on 2018/7/16.
//  Copyright © 2018年 ppquitmax. All rights reserved.
//

import UIKit

class MemberTableViewCell: UITableViewCell {
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
