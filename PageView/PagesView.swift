//
//  PagesView.swift
//  PageView
//
//  Created by Seokho on 2020/02/21.
//  Copyright © 2020 Seokho. All rights reserved.
//

import SwiftUI

struct PagesView<Page: View>: View {

    @Binding var currentPage: Int
    let viewControllers: [UIViewController]
    
    init(_ views: [Page], currentPage: Binding<Int>) {
        self._currentPage = currentPage
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }
    
    var body: some View {
        ZStack {
            PagesViewController(controllers: self.viewControllers, currentPage: self.$currentPage)
        }
    }
}
//
//struct PagesView_Previews: PreviewProvider {
//    static var previews: some View {
//        PagesView(viewControllers: [ListView(title: "ToDo -ING")],currentPage: .constant(0))
//    }
//}
