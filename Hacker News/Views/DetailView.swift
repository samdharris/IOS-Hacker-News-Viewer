//
//  DetailView.swift
//  Hacker News
//
//  Created by Sam Harris on 18/03/2022.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(url: url)
    }
}
