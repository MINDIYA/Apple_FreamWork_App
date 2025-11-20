//
//  ButtonVeiw.swift
//  Apple_FreamWork_App
//
//  Created by Mindiya Lankaja Maitipe on 2025-11-17.
//

import Foundation
import SwiftUI

struct ButtonVeiw: View {
    
    let ButtonDescripton: String
    
    var body: some View {
        
        Text(ButtonDescripton)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .foregroundColor(.white)
            .background(Color.red.opacity(0.95))
            .cornerRadius(10)
    }
}
#Preview {
    ButtonVeiw(ButtonDescripton: "Hello World")
}
