//
//  FrameWorke_DetailVeiw.swift
//  Apple_FreamWork_App
//
//  Created by Mindiya Lankaja Maitipe on 2025-11-16.
//
import SwiftUI
import Foundation

struct FrameWorke_DetailVeiw: View {
    
    
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        
        VStack{
            X_Dismiss_Button(isShowingDetailView: $isShowingDetailView)
            
            
            Spacer()
            
            Frameworke_Title_views(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            } label: {
                ButtonVeiw(ButtonDescripton: "Learn More")
                
            }
                
            }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url:URL(string: framework.url)!)
        })
            
        }
            
        }
            
        
        
        


struct FrameWorke_DetailVeiw_Previews: PreviewProvider {
    static var previews: some View {
        FrameWorke_DetailVeiw(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
