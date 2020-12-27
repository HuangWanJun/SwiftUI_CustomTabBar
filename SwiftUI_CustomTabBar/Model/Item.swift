//
//  Item.swift
//  SwiftUI_CustomTabBar
//
//  Created by Samuel Huang on 27/12/2020.
//

import SwiftUI

// Model And Model Data...

struct Item: Identifiable{
    
    var id = UUID().uuidString
    var title: String
    var price: String
    var subTitle: String
    var image: String
    var offset : CGFloat = 0
}


