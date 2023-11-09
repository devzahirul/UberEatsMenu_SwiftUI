//
//  MenuItemSection.swift
//  UberEatsMenu
//
//  Created by Hologram1 on 11/9/23.
//

import SwiftUI

struct MenuItemSection: View {
   let menuOption: MenuBarOptions
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
          Text(menuOption.title)
          .font(.title.bold())
          .padding(.vertical)
          
          ForEach(menuOption.footItems) { item in
            HStack(spacing: 16) {
            VStack(alignment: .leading) {
            Text(item.title)
            .font(.title3.bold())
            Text(item.description)
            .font(.caption)
            .foregroundColor(.gray)
            Text("Price: \(item.price)")
            .font(.system(size: 14))
            .fontWeight(.bold)
            }
            Spacer()
            
            Image("mock")
            .resizable()
            .scaledToFill()
            .frame(width: 96, height: 88)
            .foregroundColor(Color.purple)
            .clipped()
            .cornerRadius(10)
            
          }
          Divider()
          }
          
        }.modifier(OffsetModifier(option: menuOption))
    }
}

struct MenuItemSection_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemSection(menuOption: .american)
    }
}
