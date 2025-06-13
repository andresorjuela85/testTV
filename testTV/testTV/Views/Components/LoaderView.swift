//
//  LoaderView.swift
//  testTV
//
//  Created by Andres Camilo Orjuela Hurtado on 12/06/25.
//

import SwiftUI

struct LoaderView: View {
    var body: some View {
        
        ZStack {
            Colors.TMDBColor
            
            Image("TMDBLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 780)
                .offset(x: 0, y: -100)
            
            ProgressView()
                .scaleEffect(x: 1.5, y: 1.5, anchor: .top)
                .offset(x: 0, y: 50)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    LoaderView()
}
