 //
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Cristóbal Contreras on 17-09-23.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            // XDismissButton(isShowingDetailView: $isShowingDetailView)
                        
             FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                // AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            // .foregroundColor(.yellow)
            // .buttonBorderShape(.roundedRectangle(radius: 10))
            .tint(.red)
        }
        .preferredColorScheme(.dark)
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }).preferredColorScheme(.dark)
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(
            framework: MockData.sampleFramework
        )
    }
}
