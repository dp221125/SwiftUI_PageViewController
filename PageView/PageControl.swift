//
//  ContentView.swift
//  PageView
//
//  Created by Seokho on 2020/02/21.
//  Copyright © 2020 Seokho. All rights reserved.
//

import SwiftUI

struct PageControl: UIViewRepresentable {
    
    @Binding var currentPage: Int
    @Binding var numberOfPages: Int
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    func makeUIView(context: Context) -> UIPageControl {
        let uiPageControl = UIPageControl()
        uiPageControl.numberOfPages = numberOfPages
        uiPageControl.pageIndicatorTintColor = .systemGray3
        uiPageControl.currentPageIndicatorTintColor = .systemGray
        uiPageControl.addTarget(
            context.coordinator,
            action: #selector(Coordinator.updateCurrentPage(sender:)),
            for: .valueChanged)
        return uiPageControl
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
        uiView.numberOfPages = numberOfPages
    }
}
extension PageControl {
    class Coordinator: NSObject {
        var control: PageControl
        
        init(_ control: PageControl) {
            self.control = control
        }
        
        @objc
        func updateCurrentPage(sender: UIPageControl) {
            control.currentPage = sender.currentPage
        }
    }
    
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        PageControl(numberOfPages: .constant(3), currentPage: .constant(0))
//    }
//}
//
