//
//  FrameWorkGridVeiwModel.swift
//  Apple_FreamWork_App
//
//  Created by Mindiya Lankaja Maitipe on 2025-11-17.
//

import SwiftUI
import Combine

final class FrameWorkGridVeiwModel: ObservableObject {
    
    var selectedFrameWork : Framework?{
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView:Bool = false
    
}

