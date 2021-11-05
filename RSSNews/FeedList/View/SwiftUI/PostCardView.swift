//
//  PostCardView.swift
//  RSSNews
//
//  Created by Rodevelop on 14.10.2021.
//

import SwiftUI

struct PostCardView: View {
     
    var post: Post
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(post.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
            Text(post.descript)
                .font(.title2).foregroundColor(.white)
        }
        
    }
}
