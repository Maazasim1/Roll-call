//
//  TABLEDATA.swift
//  Autoattendance
//
//  Created by Maaz Asim Taimuri on 3/31/20.
//  Copyright © 2020 Maaz Asim Taimuri. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title:String
    private(set) public var imageName:String
    init(title:String,imageName:String)
    {
        self.imageName=imageName
        self.title=title
        
    }
    
}


class Datatable
{
    static let instance = Datatable()
    
private let categories = [
    Category(title: "STUDENT", imageName: "student.png"),
    Category(title: "TEACHER", imageName: "teacher.png")
    
    ]
    func getcategories()->[Category] {
        return categories
    }
    
    
}
