//
//  X_Dismiss_Button.swift
//  Apple_FreamWork_App
//
//  Created by Mindiya Lankaja Maitipe on 2025-11-20.
//

import SwiftUI

struct X_Dismiss_Button: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        
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
    }
    
}
#Preview {
    X_Dismiss_Button(isShowingDetailView:.constant(false))
}
