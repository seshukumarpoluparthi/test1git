//
//  struct1.swift
//  Prac1
//
//  Created by apple on 11/4/18.
//  Copyright © 2018 apple. All rights reserved.
//

import Foundation

@dynamicMemberLookup
class Book {
    let name : String
    let author : String
    init(name : String , author : String) {
        self.name = name
        self.author = author
    }
    
    subscript (dynamicMember value : String) -> String{
        switch value{
        case "information":
            return "Name is \(name),author is \(author)"
        default:
            return "Key value is necessary."
        }
    }
}



struct Person {
    var name : String
    var age : Int
}
