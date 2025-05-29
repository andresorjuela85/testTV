//
//  ListView.swift
//  testTV
//
//  Created by Andres Orjuela on 15/05/25.
//

import SwiftUI

struct ListView: View {
    let items = ["Item 1", "Item 2", "Item 3"]
    @State private var selection: Int? = nil

    var body: some View {
      VStack(spacing: 20) {
        Text("My List")

        ForEach(0..<items.count, id: \.self) { index in
          Button(action: {
            self.selection = index
          }) {
            HStack {
              Text(self.items[index])
              Spacer()
              if selection == index {
                Image(systemName: "checkmark")
              }
            }
          }
          .padding()
        }

        if let selection = selection {
          Text("Selected Item: \(items[selection])")
        }
      }
      .padding()
    }
}

#Preview {
    ListView()
}
