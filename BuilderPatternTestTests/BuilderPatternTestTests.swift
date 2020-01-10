//
//  BuilderPatternTestTests.swift
//  BuilderPatternTestTests
//
//  Created by 羅翊修 on 2020/1/9.
//  Copyright © 2020 羅翊修. All rights reserved.
//

import XCTest
import Foundation

@testable import BuilderPatternTest

class BuilderPatternTestTests: XCTestCase {

    func test0() {
        
        let house = House(floor: 1, room: 2, furniture: true)
        
        print("\n=============================")
        print("Case 1\n")
        print("floor: \(house.floor)")
        print("room: \(house.room)")
        print("furniture: \(house.furniture)")
        print("\n=============================\n")
    }
    
    
    
    let houseBuilder = HouseBuilder()
    
    func test1() {
        
        let house = houseBuilder.build()
        
        print("\n=============================")
        print("Case 2\n")
        print("floor: \(house.floor)")
        print("room: \(house.room)")
        print("furniture: \(house.furniture)")
        print("\n=============================\n")
    }
    
    func test2() {
        
        houseBuilder.setFloor(10)
        houseBuilder.setFurniture(include: true)
        
        let house = houseBuilder.build()
        
        print("\n=============================")
        print("Case 3\n")
        print("floor: \(house.floor)")
        print("room: \(house.room)")
        print("furniture: \(house.furniture)")
        print("\n=============================\n")
    }
    
    func test3() {

        let house = houseBuilder.setFloor(2).setRoom(7).build()

        print("\n=============================")
        print("Case 4\n")
        print("floor: \(house.floor)")
        print("room: \(house.room)")
        print("furniture: \(house.furniture)")
        print("\n=============================\n")
    }
    
    
    
    let nsDateBuilder = NSDateComponents()
    
    func testNSDateComponents() {

        nsDateBuilder.hour = 11
        nsDateBuilder.day = 9
        nsDateBuilder.month = 1
        nsDateBuilder.year = 2020
        nsDateBuilder.calendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian) as Calendar?
        
        let date = nsDateBuilder.date!
        
        print("\n=============================")
        print("Case 5\n")
        print(date)
        print("\n=============================\n")
    }
    
    
    
    var urlBuilder = URLComponents()
    var offset = 0
    var limit = 10

    func testURLComponents() {
        
        urlBuilder.scheme = "https"
        urlBuilder.host = "data.taipei"
        urlBuilder.path = "/opendata/datalist/apiAccess"
        urlBuilder.query = "123"
        urlBuilder.queryItems = [
            URLQueryItem(name: "scope", value: "resourceAquire"),
            URLQueryItem(name: "limit", value: String(limit)),
            URLQueryItem(name: "offset", value: String(offset))
        ]
        offset += limit
        
        let url = urlBuilder.url!
        
        print("\n=============================")
        print("Case 6\n")
        print(url)
        print("\n=============================\n")
    }
    
    
    
    let newHouseBuilder = NewHouseBuilder()
    
    func test4() {
        
        newHouseBuilder.floor = 13
        newHouseBuilder.room = 100
        newHouseBuilder.furniture = true
        
        let house = newHouseBuilder.build()
        
        print("\n=============================")
        print("Case 7\n")
        print("floor: \(house.floor)")
        print("room: \(house.room)")
        print("furniture: \(house.furniture)")
        print("\n=============================\n")
    }
}
