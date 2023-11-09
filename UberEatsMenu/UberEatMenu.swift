//
//  UberEatMenu.swift
//  UberEatsMenu
//
//  Created by Hologram1 on 11/9/23.
//

import SwiftUI

struct UbserEatMenu: View {

@State var selectedOption: MenuBarOptions = .japanese

  var body: some View {
    VStack {
    //top navigation bar
      HStack(spacing: 16) {
         Button {
         
         } label: {
            Image(systemName: "arrow.left")
            .font(.title2)
         }
         
         Text("Miami - South Beach")
         .font(.title3)
         .fontWeight(.semibold)
         .frame(maxWidth: .infinity, alignment: .leading)
        
          Button {
         
         } label: {
            Image(systemName: "magnifyingglass")
            .font(.title2)
         }
         
      }.foregroundColor(Color.black)
      
      
      //meun opotion list
      
      MenuOptionList(selectedOption: $selectedOption)
      .padding([.top, .horizontal])
      .overlay(
      Divider()
      .padding(.horizontal, -16)
      , alignment: .bottom)
      
      ScrollViewReader { proxy in
        ScrollView(showsIndicators: false) {
           VStack {
            ForEach(MenuBarOptions.allCases, id: \.self) { option in
            
            MenuItemSection(menuOption: option)
            
            }
            }
           .onChange(of: selectedOption, perform: { _ in
               withAnimation(.easeInOut) {
                   proxy.scrollTo(selectedOption, anchor: .topTrailing)
               }
               
           })
            .padding(.horizontal)
        }.coordinateSpace(name: "scroll")
     
      }
      
      
      //content
    }//vstack
  }
}

struct UbserEatMenu_Previews: PreviewProvider {
    static var previews: some View {
        UbserEatMenu()
    }
}
