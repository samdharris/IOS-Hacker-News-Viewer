//
//  PostView.swift
//  Hacker News
//
//  Created by Sam Harris on 18/03/2022.
//

import SwiftUI

struct PostView: View {
    let post: Post

    var body: some View {
        NavigationLink(destination: DetailView(url: post.url)) {
            VStack(alignment: .leading, spacing: 10) {
                Text(post.title)
                    .fontWeight(.bold)
                    .font(.headline)
                Text("Points: \(post.points)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.all)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        let post = Post(objectID: "123", title: "Foo Bar BAz", url: "https://natterhub.com", points: 69)
        PostView(post: post)
            .previewLayout(.sizeThatFits)
    }
}
