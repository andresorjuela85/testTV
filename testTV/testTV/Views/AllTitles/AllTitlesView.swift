//
//  AllTitlesView.swift
//  testTV
//
//  Created by Andres Camilo Orjuela Hurtado on 5/06/25.
//

import SwiftUI

struct AllTitlesView: View {
    
    @State var viewModel = AllTitlesViewModel()
    @FocusState var focusField: Result?
    @FocusState private var focusedStructView: FocusedStructView?
    
    enum FocusedStructView: Hashable {
        case first
        case second
    }
    
    @State var isLoading = true
    
    var body: some View {
        
        ZStack  {
            
            GeometryReader { geometry in
                ZStack(alignment: .top) {
                    BackgroundMainView(urlImage: focusField?.backdropPath ?? "", height: 8/13)

                    InfoTitlesView(results: viewModel.results, focusField: $focusField)
                        .focused($focusedStructView, equals: .first)
                    
                    VStack(alignment: .leading) {
                        DetailMainView(focusField: focusField)
                            .frame(height: geometry.size.height * 0.5)
                    }
                    .padding(.top, -20)
                    
                }
                .focusSection()
                .onAppear {
                    focusedStructView = .first
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        isLoading = false
                    }
                }
                .onDisappear {
                    isLoading = true
                }
            }
            
            if isLoading {
                LoaderView()
            }
        }
    }
}

#Preview {
    AllTitlesView()
}
