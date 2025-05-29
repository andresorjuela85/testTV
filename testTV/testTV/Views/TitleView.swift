//
//  TitleView.swift
//  testTV
//
//  Created by Andres Orjuela on 19/05/25.
//

import SwiftUI
import Foundation

struct TitleView: View {
    
    let listData: [String] = ["1", "2", "3", "4", "5", "1", "2", "3", "4", "5"]
    @State var belowFold: Bool = true
    
    var body: some View {
        VStack(spacing: 50) {
            VStack(alignment: .leading) {
                
                Text ("Peliculas...")
                
            }
            //.frame(maxWidth: .infinity, alignment: .leading)
            //.focusSection()
            //.containerRelativeFrame(.vertical, alignment: .bottomTrailing) {
            //   length, _ in length * 0.8
            //}
            
            ScrollView {
                ScrollView(.horizontal) {
                    HStack(spacing: 40) {
                        ForEach(listData, id: \.self) { item in
                            Button {
                                //
                            } label: {
                                ExtractedView()
                                    .frame(height: 275)
                                    .scaledToFit()
                                    //.aspectRatio(78/117, contentMode: .fill)
                                    .containerRelativeFrame(.horizontal, count: 6, spacing: 40)
                            }
                            
                            
                        }
                    }
                    
                }
                .scrollClipDisabled()
                .buttonStyle(.borderless)
                
                
            }
        }
        
        
    }
}

#Preview {
    TitleView()
}

struct ExtractedView: View {
    var body: some View {
        Image("supermanPoster")
            .resizable()
            
            //.scaledToFit()
            //.frame(width: 400)
        
    }
}
