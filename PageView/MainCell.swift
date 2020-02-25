//
//  MainCell.swift
//  PageView
//
//  Created by Seokho on 2020/02/21.
//  Copyright © 2020 Seokho. All rights reserved.
//

import SwiftUI

struct MainCell: View {
    
    @State
    var isCheck: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Hello")
                        .font(.system(size: 20, weight: .bold, design: .default))
                    Text("World")
                        .font(.system(size: 16))
                }
                Spacer()
                Button(action: {
                    self.isCheck.toggle()
                }) {
                    Image(systemName: self.isCheck ? "checkmark.circle": "circle")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(Color(self.isCheck ? .systemGreen: .systemPink))
                    
    
                }
            }
        }

    }
}

struct MainCell_Previews: PreviewProvider {
    static var previews: some View {
//        MainCell(data: ToDo(title: "HELLO", date: Date(), isCheck: false))
        MainCell()
    }
}
