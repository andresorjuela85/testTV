//
//  ScrollPostersView.swift
//  testTV
//
//  Created by Andres Orjuela on 21/05/25.
//

import SwiftUI

struct InfoTitlesView: View {
    
    let listData: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    var results: [Result]
    
    @FocusState.Binding var focusField: Result?
    @FocusState var focusedField: FocusedField?
    
    enum FocusedField: Hashable {
        case focus1
        case focus2
    }
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 0) {
                
                VStack(alignment: .leading) {
                    if focusedField != .focus2 {
                        TitlesBeginningView(results: results, focusField: focusField)
                            .frame(height: geometry.size.height * 0.7)
                            
                        
                    } else {
                        DetailMainView(focusField: focusField)
                            .frame(height: geometry.size.height * 0.4)
                        
                    }
                }
                .focused($focusedField, equals: .focus1)
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    Text((focusField?.originalName ?? focusField?.originalTitle) ?? "NO NAME")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    ScrollView(.horizontal) {
                        LazyHStack(spacing: 40) {
                            
                            ForEach(results, id: \.self) { result in
                                
                                VStack {
                                    NavigationLink(destination: DetailTitleView()) {
                                        PosterView(urlImage: result.posterPath)

                                    }
                                    .containerRelativeFrame(.horizontal, count: 7, spacing: 40)
                                    .buttonStyle(.borderless)
                                    .focused($focusField, equals: result)
                                }
                            }
                        }
                        
                    }
                    .focused($focusedField, equals: .focus2)
                    .scrollClipDisabled()
                    
                    Text("Genre 2")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 40) {
                            ForEach(results, id: \.self) { result in
                                
                                
                                VStack {
                                    NavigationLink(destination: DetailTitleView()) {
                                        PosterView(urlImage: result.posterPath)
                                        
                                        
                                    }
                                    .containerRelativeFrame(.horizontal, count: 6, spacing: 40)
                                    .buttonStyle(.borderless)
                                    
                                    //Text(re)
                                }
                                
                            }
                        }
                        
                    }
                    .scrollClipDisabled()
                    
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                    focusedField = .focus1
                                }
                }

                //.contentMargins(600)
                //.background(.black)
            }
      }
        
    }
}

/*
#Preview {
    InfoTitlesView(results: [])
}
*/
