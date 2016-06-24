//
//  User.swift
//  Swimee0625
//
//  Created by 荒川陸 on 2016/06/24.
//  Copyright © 2016年 Riku Arakawa. All rights reserved.
//

import UIKit

class User {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    static var loginUser: User!
}
