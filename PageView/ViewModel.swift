//
//  ViewModel.swift
//  PageView
//
//  Created by Seokho on 2020/02/25.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var currentPage: Int = 0
    @Published var numberOfPages: Int = 2
    
    func pressedPlusButton() {
        numberOfPages += 1
    }

}
