//
//  toSettingCell.swift
//  Swimee0625
//
//  Created by 荒川陸 on 2016/06/24.
//  Copyright © 2016年 Riku Arakawa. All rights reserved.
//

import UIKit

protocol ToSettingDelegate: class {
    func toSetting()
}

final class toSettingCell: UITableViewCell {
    weak var delegate: ToSettingDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func toNext() {
        delegate?.toSetting()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
