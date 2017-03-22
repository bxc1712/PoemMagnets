//
//  AppData.swift
//  PoelarMagnets
//
//  Created by Daniel Martin (RIT Student) on 3/22/17.
//  Copyright © 2017 Daniel Martin. All rights reserved.
//

import Foundation


class AppData{
    static let shared = AppData()
    
    private var words = [
        "colors" : ["red", "green", "blue", "orange"],
        "monsters": ["orc", "Kirin", "Gray ooze", "Zombie"],
        "heroes" : ["Gilgamesh", "King Arthur", "Roland", "Aragorn"]
    ]
    
    private init(){}
    
    
    func fetchList(lists:String)->[String]{
        return words[lists] ?? [String]()
    }
    
    public var lists:[String]{
        return [String](words.keys)
    }
}
