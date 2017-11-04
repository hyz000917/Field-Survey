//
//  Field.swift
//  Filed Survey
//
//  Created by 来思良 on 2017/11/3.
//  Copyright © 2017年 Yuzhou He. All rights reserved.
//

import UIKit

enum Classification: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile

    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
