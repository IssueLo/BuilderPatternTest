//
//  NewHouseBuilder.swift
//  BuilderPatternTest
//
//  Created by 羅翊修 on 2020/1/10.
//  Copyright © 2020 羅翊修. All rights reserved.
//

import Foundation

public class NewHouseBuilder {

    private var newFloor:Int = 4
    private var newRoom:Int = 3
    private var newFurniture:Bool = false
    
    var floor: Int {
        get {
            return newFloor
        }
        set(newValue) {
            newFloor = newValue
        }
    }
    
    var room:Int {
        get {
            return newRoom
        }
        set(newValue) {
            newRoom = newValue
        }
    }
    
    var furniture:Bool {
        get {
            return newFurniture
        }
        set(newValue) {
            newFurniture = newValue
        }
    }

    func build() -> House {
        return House(floor: floor, room: room, furniture: furniture)
    }
}
