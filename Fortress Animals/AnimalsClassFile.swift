//
//  AnimalsClassFile.swift
//  Fortress Animals
//
//  Created by epita on 31/05/2018.
//  Copyright © 2018 Fortress Bismark. All rights reserved.
//

import Foundation

//class file for animals
class AnimalClassFile {
    var animalCode: String?
    var animalClass: String?
    var animalOrder: String?
    var animalName: String?
    var animalLifeSpan: String?
    var animalReproduction: String?
    var animalDescription: String?
    var animalPhoto: String?
    
    //initialization or constructor for the animals class
    init(animalCode : String, animalClass : String, animalOrder: String, animalName : String, animalLifeSpan: String, animalReproduction: String, animalDescription: String, animalPhoto: String)
    {
        self.animalCode = animalCode
        self.animalClass = animalClass
        self.animalOrder = animalOrder
        self.animalName = animalName
        self.animalLifeSpan = animalLifeSpan
        self.animalReproduction = animalReproduction
        self.animalDescription = animalDescription
        self.animalPhoto = animalPhoto
    }
}
