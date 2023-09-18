//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Cristóbal Contreras on 18-09-23.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
        .preferredColorScheme(.dark)
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(
            framework: MockData.sampleFramework
        )
    }
}
