//
//  ContentView.swift
//  Hacker News
//
//  Created by Sam Harris on 18/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) {
                post in
                PostView(post: post)                    
            }
            .navigationTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
