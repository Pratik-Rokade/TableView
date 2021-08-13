//
//  Car.swift
//  TableView
//
//  Created by Pratik's Macbook on 22/07/21.
//
// MARK: For making struct we use swift File
import Foundation
import UIKit //for using libraries we take uiKit

struct car {
    var carName:String
    var image:String
    
    // made copy of variables
    init(carName:String,image:String) {
        self.carName = carName
        self .image = image
    }
}

