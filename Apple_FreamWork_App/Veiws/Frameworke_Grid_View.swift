//
//  Frameworke_Grid_View.swift
//  Apple_FreamWork_App
//
//  Created by Mindiya Lankaja Maitipe on 2025-11-16.
//

import SwiftUI


struct Frameworke_Grid_View: View {
    
    @StateObject private var veiwModel = FrameWork_GridVeiw_Model()
    
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                LazyVGrid(columns: veiwModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        Frameworke_Title_views(framework: framework)
                            .onTapGesture {
                                veiwModel.selectedFrameWork = framework
                            }
                    }
                    
                }
                
            }
            
            .navigationBarTitle("🍎 Frameworks")
            .sheet(isPresented: $veiwModel.isShowingDetailView) { FrameWorke_DetailVeiw(framework: veiwModel.selectedFrameWork!, isShowingDetailView: $veiwModel.isShowingDetailView)
            }
        }
        
        
        
        
    }
}

#Preview {
    Frameworke_Grid_View()
        
}



