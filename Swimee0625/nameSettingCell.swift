//
//  nameCell.swift
//  Swimee0625
//
//  Created by 荒川陸 on 2016/06/24.
//  Copyright © 2016年 Riku Arakawa. All rights reserved.
//

import UIKit

final class nameSettingCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet private weak var textField: UITextField!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        textField.text = ""
        textField.delegate = self
    }
    
    func configure(name: String) {
        textField.text = name
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
