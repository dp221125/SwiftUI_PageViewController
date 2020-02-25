//
//  ListView.swift
//  PageView
//
//  Created by Seokho on 2020/02/21.
//  Copyright © 2020 Seokho. All rights reserved.
//

import SwiftUI

struct ListView: View {
    
    var title: String
    @ObservedObject var dataMager = DataManager.shared
    var data = [ToDo]()
    
    var body: some View {
        return GeometryReader { geometry in
            VStack {
                VStack {
                    HStack {
                        Text(self.title)
                            .font(.system(size: 38, weight: .bold, design: .default))
                        Spacer()
                    }
                }.frame(height: 80)
                List {
                    Group {
                        ForEach(self.data, id: \.self){ data -> MainCell in
                            MainCell()
                        }
                    }
                    .padding([.top, .bottom], 16)
                }
                .listStyle(GroupedListStyle())
                .offset(x: 0, y: -53)
            }
            .padding([.leading, .trailing], 16 + geometry.safeAreaInsets.leading)
        }.background(Color(.systemGroupedBackground))
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(title: "ToDo -ING")
    }
}
