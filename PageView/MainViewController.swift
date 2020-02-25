//
//  MainViewController.swift
//  PageView
//
//  Created by Seokho on 2020/02/21.
//  Copyright © 2020 Seokho. All rights reserved.
//

import SwiftUI

struct MainViewController: View {

    @State var currentPage: Int = 0
    @State var numberOfPages: Int = 2
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .edgesIgnoringSafeArea([.top, .bottom])
            VStack {
                Spacer()
                PagesView(makePagesView(),
                          currentPage: self.$currentPage)
                Spacer()
                ToolBar(currentPage: self.$currentPage, numberOfPages: self.$numberOfPages)
                    .frame(height: 44,
                           alignment: .center)
            }
        }
    }
    
    func makePagesView() -> [AnyView] {
        var views = [AnyView]()
        
        for index in 0 ..< numberOfPages {
            views.append(AnyView(ListView(title: "\(index)")))
        }
        return views
    }


}

struct MainViewController_Previews: PreviewProvider {
    static var previews: some View {
        MainViewController()
    }
}
