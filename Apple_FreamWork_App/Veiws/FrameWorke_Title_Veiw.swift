//
//  FrameWorke_title_Veiw.swift
//  Apple_FreamWork_App
//
//  Created by Mindiya Lankaja Maitipe on 2025-11-20.
//

import SwiftUI

struct Frameworke_Title_views: View {
    
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


#Preview {
    Frameworke_Title_views(framework: MockData.sampleFramework)
}
