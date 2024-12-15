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
                        HStack {
                            Image("p2")
                                .resizable()
                                .scaledToFill()
                                .frame(width:45, height: 45)
                                .clipShape(.circle)
                            VStack(alignment: .leading){
                                Text("Mr shadow")
                                    .fontWeight(.semibold)
                                Text("developper swift")
                                
                              
                            }.font(.footnote)
                            Spacer()
                            Text("following")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .frame(width: 100, height: 32)
                                .foregroundColor(.black)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color(.systemGray4),lineWidth: 1)
                                    
                                }
                        }.padding(.horizontal)
                            .padding(.vertical,5)
                        Divider()
                              
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
