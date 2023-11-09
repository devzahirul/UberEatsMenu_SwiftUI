//
//  MenuOptionList.swift
//  UberEatsMenu
//
//  Created by Hologram1 on 11/9/23.
//

import SwiftUI

struct MenuOptionList: View {
    @Binding var selectedOption: MenuBarOptions
    @Namespace var animation
    var body: some View {
        ScrollViewReader {proxy in
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 30) {
                ForEach(MenuBarOptions.allCases, id: \.self) {item in
                    VStack {
                        Text(item.title)
                            .foregroundColor(selectedOption == item ? .black : .gray)
                        
                        
                        if selectedOption == item {
                            Capsule()
                                .fill(.black)
                                .matchedGeometryEffect(id: "item", in: animation)
                                .frame(height: 3)
                                .padding(.horizontal, -10)
                        } else {
                            Capsule()
                                .fill(.clear)
                                .frame(height: 3)
                                .padding(.horizontal, -10)
                        }
                        
                        
                        
                    }.onTapGesture {
                        withAnimation(.easeInOut) {
                            self.selectedOption = item
                        proxy.scrollTo(item, anchor: .topTrailing)
                        }
                       
                    }
                }
            }
        }
        
        }
    }
}

struct MenuOptionList_Previews: PreviewProvider {
    static var previews: some View {
        MenuOptionList(selectedOption: .constant(.japanese))
    }
}
