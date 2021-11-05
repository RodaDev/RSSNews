//
//  StaggeredGrid.swift
//  RSSNews
//
//  Created by Rodevelop on 10.10.2021.
//

import SwiftUI

struct StaggeredGrid<Content: View, T: Identifiable>: View where T: Hashable {
    var content: (T) -> Content
    
    var list: [T]
    
    // columns
    
    var columns: Int
    
    var needShowIndicator: Bool
    var spacing: CGFloat
    
    init(columns: Int = 2,
         needShowIndicator: Bool = false,
         spacing: CGFloat = 10.0,
         list: [T],
         @ViewBuilder content: @escaping (T) -> Content) {
        self.content = content
        self.list = list
        self.needShowIndicator = needShowIndicator
        self.spacing = spacing
        self.columns = columns
    }
    
    func setupList() -> [[T]] {
        var gridArray: [[T]] = Array(repeating: [], count: columns)
        
        var currentIndex: Int = 0
        
        for object in list {
            gridArray[currentIndex].append(object)
            
            if currentIndex == (columns - 1) {
                currentIndex = 0
            } else {
                currentIndex += 1
            }
        }
        return gridArray
    }
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: needShowIndicator) {
            HStack(alignment: .top) {
                ForEach(setupList(), id: \.self) { columnData in
                    LazyVStack(spacing: spacing) {
                        ForEach(columnData) {
                            content($0)
                        }
                    }
                }
            }
            .padding(.vertical)
        }
    }
}

struct StaggeredGrid_Previews: PreviewProvider {
    static var previews: some View {
        FeedListSwiftUI()
    }
}
