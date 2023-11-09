//
//  FoodItem.swift
//  UberEatsMenu
//
//  Created by Hologram1 on 11/9/23.
//

import Foundation


struct FoodItem: Identifiable {
var id = UUID().uuidString
let title: String
let description: String
let price: String
let imageName: String
}


var japaneseFood: [FoodItem] = [
.init(title: "Sushi", description: "Amazing sushi imported direcly from Japan", price: "$24", imageName: "carrot.fill"),
.init(title: "Ramen Noodles", description: "Amazing sushi imported direcly from Japan", price: "$24", imageName: "carrot.fill"),
.init(title: "Poke Bowl", description: "Amazing sushi imported direcly from Japan", price: "$24", imageName: "carrot.fill")
]

var americanFood: [FoodItem] = [
.init(title: "Sushi", description: "Amazing sushi imported direcly from Japan", price: "$24", imageName: "carrot.fill"),
.init(title: "Ramen Noodles", description: "Amazing sushi imported direcly from Japan", price: "$24", imageName: "carrot.fill"),
.init(title: "Poke Bowl", description: "Amazing sushi imported direcly from Japan", price: "$24", imageName: "carrot.fill")
]

var italianFood: [FoodItem] = [
.init(title: "Sushi", description: "Amazing sushi imported direcly from Japan", price: "$24", imageName: "carrot.fill"),
.init(title: "Ramen Noodles", description: "Amazing sushi imported direcly from Japan", price: "$24", imageName: "carrot.fill"),
.init(title: "Poke Bowl", description: "Amazing sushi imported direcly from Japan", price: "$24", imageName: "carrot.fill")
]

var promotionalFood: [FoodItem] = [
.init(title: "Sushi", description: "Amazing sushi imported direcly from Japan", price: "$24", imageName: "carrot.fill"),
.init(title: "Ramen Noodles", description: "Amazing sushi imported direcly from Japan", price: "$24", imageName: "carrot.fill"),
.init(title: "Poke Bowl", description: "Amazing sushi imported direcly from Japan", price: "$24", imageName: "carrot.fill")
]


var fancyFood: [FoodItem] = [
.init(title: "Sushi", description: "Amazing sushi imported direcly from Japan", price: "$24", imageName: "carrot.fill"),
.init(title: "Ramen Noodles", description: "Amazing sushi imported direcly from Japan", price: "$24", imageName: "carrot.fill"),
.init(title: "Poke Bowl", description: "Amazing sushi imported direcly from Japan", price: "$24", imageName: "carrot.fill")
]
