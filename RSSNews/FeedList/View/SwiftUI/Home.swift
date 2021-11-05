//
//  Home.swift
//  RSSNews
//
//  Created by Rodevelop on 10.10.2021.
//

import SwiftUI
import RealmSwift

struct Home: View {
    @State var posts = [Post]()
    @State var columns = 2
    
    @Namespace var animation
    
    var body: some View {
        NavigationView {
            
            StaggeredGrid(columns: columns,
                          list: posts,
                          content: { post in
                PostCardView(post: post)
                    .matchedGeometryEffect(id: post.id, in: animation)
            })
                .padding(.horizontal)
                .navigationTitle("Staggered Grid")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            columns = 1
                        } label: {
                            Image(systemName: "rectangle.grid.1x2.fill")
                            
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            columns += 1
                        } label: {
                            Image(systemName: "square.grid.2x2.fill")
                            
                        }
                    }
                }
                .animation(.easeInOut, value: columns)
        }.onAppear {
            for index in 0...14 {
                posts.append(Post(imageURL: "mock\(index)"))
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
