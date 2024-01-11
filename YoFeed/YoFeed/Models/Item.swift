//
//  Item.swift
//  YoFeed
//
//  Created by Gaurav Tiwari on 2024-01-10.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
