//
//  Frameworke_Grid_View.swift
//  Apple_FreamWork_App
//
//  Created by Mindiya Lankaja Maitipe on 2025-11-16.
//

import SwiftUI


struct Frameworke_Grid_View: View {
    
    @StateObject private var veiwModel = FrameWorkGridVeiwModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var body: some View {
        
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkeTitle_views(framework: framework)
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

struct FrameworkeTitle_views: View {
    
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(1)
                .minimumScaleFactor(0.6)
                .padding()
        }
        
    }
    
}

