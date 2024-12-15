//
//  ExploreView.swift
//  ThreadApp
//
//  Created by KarmL on 12/12/2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText=""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(0...10, id: \.self){
                        user in
                        VStack {
                            UserCell()
                            Divider()
                        }
                       
                              
                    }
                }
                
            } .navigationTitle("Searches")
            .searchable(text: $searchText,prompt: "search")
        }
       
       
    }
}

#Preview {
    ExploreView()
}
