//
//  House.swift
//  BuilderPatternTest
//
//  Created by 羅翊修 on 2020/1/9.
//  Copyright © 2020 羅翊修. All rights reserved.
//

struct House {
    
    var floor: Int
    var room: Int
    var furniture: Bool
    
    init(floor: Int, room: Int, furniture: Bool) {
        self.floor = floor
        self.room = room
        self.furniture = furniture
    }
    
}
