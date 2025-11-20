//
//  FrameWorkGridVeiwModel.swift
//  Apple_FreamWork_App
//
//  Created by Mindiya Lankaja Maitipe on 2025-11-17.
//

import SwiftUI
import Combine

final class FrameWork_GridVeiw_Model: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var selectedFrameWork : Framework?{
        didSet {isShowingDetailView = true}
        }
    @Published var isShowingDetailView:Bool = false
    
}

