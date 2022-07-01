//
//  ContentView.swift
//  H4X0R News
//
//  Created by Nelson Gou on 7/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts, rowContent: { post in
                Text(post.title)
            })
            .listStyle(.inset)
            
            .navigationTitle("H4X0R News")
        }
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "hello"),
    Post(id: "2", title: "world"),
    Post(id: "3", title: "my"),
    Post(id: "4", title: "name"),
    Post(id: "5", title: "is"),
    Post(id: "6", title: "nelson")
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
