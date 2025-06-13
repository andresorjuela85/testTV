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
                /*
                 VStack(alignment: .leading) {
                 if focusedField != .focus2 {
                 TitlesBeginningView(results: results, focusField: focusField)
                 .frame(height: geometry.size.height * 0.7)
                 
                 
                 } else {
                 DetailMainView(focusField: focusField)
                 .frame(height: geometry.size.height * 0.5)
                 
                 }
                 }
                 .focused($focusedField, equals: .focus1)
                 */
                VStack(alignment: .leading) {
                    Spacer()
                        .frame(height: geometry.size.height * 0.5)
                }
                .focused($focusedField, equals: .focus1)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    GenrePostersView(focusField: $focusField, results: results)
                    
                    GenrePostersView(focusField: $focusField, results: results)
                }
                .focused($focusedField, equals: .focus2)
                
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    focusedField = .focus2
                }
            }
        }
        
    }
}

/*
 #Preview {
 InfoTitlesView(results: [])
 }
 */
