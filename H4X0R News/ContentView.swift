//
//  ContentView.swift
//  H4X0R News
//
//  Created by Nelson Gou on 7/1/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts, rowContent: { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            })
            .listStyle(.inset)
            
            .navigationTitle("H4X0R News")
        }
        
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
