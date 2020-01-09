//
//  HouseBuilder.swift
//  BuilderPatternTest
//
//  Created by 羅翊修 on 2020/1/9.
//  Copyright © 2020 羅翊修. All rights reserved.
//

public class HouseBuilder {
    
    private var floor:Int = 4
    private var room:Int = 3
    private var furniture:Bool = false
    
//    func setFloor(_ floor: Int) {
//        self.floor = floor
//    }
//    
//    func setRoom(_ room: Int) {
//        self.room = room
//    }
//    
//    func setFurniture(include furniture: Bool) {
//        self.furniture = furniture
//    }
    
    func build() -> House {
        return House(floor: floor, room: room, furniture: furniture)
    }
    
    @discardableResult
    func setFloor(_ floor: Int) -> HouseBuilder  {
        self.floor = floor
        return self
    }

    @discardableResult
    func setRoom(_ room: Int) -> HouseBuilder  {
        self.room = room
        return self
    }

    @discardableResult
    func setFurniture(include furniture: Bool) -> HouseBuilder  {
        self.furniture = furniture
        return self
    }
    
}
