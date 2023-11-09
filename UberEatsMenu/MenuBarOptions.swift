//
//  MenuBarOptions.swift
//  UberEatsMenu
//
//  Created by Hologram1 on 11/9/23.
//

import Foundation

enum MenuBarOptions: Int, CaseIterable {
 case japanese
 case american
 case italian
 case promotions
 case fancy
 
 var title: String {
   switch self {
   case .japanese: return "Japanese"
   case .american: return "American"
   case .italian: return "Italian"
   case .promotions: return "Promotions"
   case .fancy: return "Fancy"
   }
 }
 
 
 var footItems: [FoodItem] {
   switch self {
   case .japanese: return japaneseFood
   case .american: return americanFood
   case .italian: return italianFood
   case .promotions: return promotionalFood
   case .fancy: return fancyFood
   }
 }
 
 
}
