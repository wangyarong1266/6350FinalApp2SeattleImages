//
//  SeattleTableViewCell.swift
//  App1SeattleImages
//
//  Created by rongbaobao888 on 12/9/23.
//

import UIKit

class SeattleTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var seattleLabel: UILabel!
    
    @IBOutlet weak var seattleImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
