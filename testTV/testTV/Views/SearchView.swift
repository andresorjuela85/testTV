//
//  SearchView.swift
//  testTV
//
//  Created by Andres Camilo Orjuela Hurtado on 26/05/25.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .searchable(text: $searchText)
    }
}

#Preview {
    SearchView()
}
