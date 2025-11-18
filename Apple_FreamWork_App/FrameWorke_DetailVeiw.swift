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
    
    var body: some View {
        
        VStack{
            HStack{
                Spacer()
                
                Button{
                    isShowingDetailView = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 50, height: 50)
                }
                    
                        
                
            }
            .padding()
            
            Spacer()
            
            FrameworkeTitle_views(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                
            } label: {
                ButtonVeiw(ButtonDescripton: "Learn More")
                
            }
                
            }
            
        }
            
        }
        
        


struct FrameWorke_DetailVeiw_Previews: PreviewProvider {
    static var previews: some View {
        FrameWorke_DetailVeiw(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
