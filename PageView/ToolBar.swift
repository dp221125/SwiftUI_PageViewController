//
//  ToolBar.swift
//  PageView
//
//  Created by Seokho on 2020/02/21.
//  Copyright © 2020 Seokho. All rights reserved.
//

import SwiftUI

struct ToolBar: View {
    
    @Binding var currentPage: Int
    @Binding var numberOfPages: Int
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color(.systemGray5)
                HStack {
                    Button(action: {
//                        self.viewModel.pressedPlusButton()
                    }) {
                        Image(systemName: "plus")
                            .foregroundColor(Color(.label))
                    }
                    Spacer()
                    PageControl(currentPage: self.$currentPage, numberOfPages: self.$numberOfPages)
                    Spacer()
                    Button(action: {
                         //
                     }) {
                         Image(systemName: "ellipsis")
                             .foregroundColor(Color(.label))
                     }
                }
                .padding([.leading,.trailing], geometry.safeAreaInsets.leading + 16)
                .padding(.bottom, geometry.safeAreaInsets.bottom)
            }
        }
        .edgesIgnoringSafeArea(.bottom)

    }
}
//
//struct ToolBar_Previews: PreviewProvider {
//    static var previews: some View {
//        ToolBar(currentPage: .constant(0), numberOfPages: .constant(2))
//    }
//}
