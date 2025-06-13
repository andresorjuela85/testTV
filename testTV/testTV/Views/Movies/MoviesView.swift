//
//  MoviesView.swift
//  testTV
//
//  Created by Andres Camilo Orjuela Hurtado on 6/06/25.
//

import SwiftUI

struct MoviesView: View {
    
    @State var viewModel = AllTitlesViewModel()
    @FocusState var focusField: Result?
    
    var body: some View {
        DetailMainView()
    }
}

#Preview {
    MoviesView()
}
