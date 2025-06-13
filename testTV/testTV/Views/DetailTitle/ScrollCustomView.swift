//
//  ScrollCustomView.swift
//  testTV
//
//  Created by Andres Camilo Orjuela Hurtado on 10/06/25.
//

import SwiftUI

struct ScrollCustomView: View {
    
    enum FocusableItem: Hashable {
        case item(Int)
    }
    
    @FocusState private var focusedItem: FocusableItem?
    @State private var selectedIndex: Int = 0
    let items = Array(0..<10)
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(items, id: \.self) { index in
                        Button("Item \(index)") {
                            print("Pressed \(index)")
                        }
                        .frame(height: 80)
                        //.background(focusedItem == .item(index) ? Color.blue : Color.gray)
                        .cornerRadius(8)
                        .id(index)
                        .focused($focusedItem, equals: .item(index))
                    }
                }
                .padding()
            }
            .onChange(of: focusedItem) { oldFocus, newFocus in
                if case let .item(index) = newFocus {
                    withAnimation {
                        proxy.scrollTo(index, anchor: .top)
                    }
                    selectedIndex = index
                }
            }
        }
    }
}

#Preview {
    ScrollCustomView()
}
