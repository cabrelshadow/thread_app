//
//  ProfilView.swift
//  ThreadApp
//
//  Created by KarmL on 12/12/2024.
//

import SwiftUI

struct ProfilView: View {
    @State private var selectedFilter:ProfileThreadFilter = .threads
    @Namespace var animation
    var body: some View {
        ScrollView(showsIndicators: false){
            //bio and stats
            VStack(spacing:20) {
                HStack(alignment: .top){
                    VStack(alignment:.leading,spacing: 12) {
                        //full name and username
                        VStack(alignment:.leading,spacing: 4){
                            
                            Text("Charle Leclerc")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Text("charles_leclerc ")
                                .font(.subheadline)
                            
                            
                        }
                        Text("Formula 1 Driver for Scudria Ferarie")
                            .font(.footnote)
                        Text("2 follower")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }.padding(.vertical,10)
                    Spacer()
                    CircularImageView()
                }
                Button{
                    
                }label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(8)
                }
                // user content list view
                VStack{
                    //tabView of item and animation
                    HStack{
                        ForEach(ProfileThreadFilter.allCases){
                            filler in
                            VStack{
                                Text(filler.title)
                                    .font(.subheadline )
                                    .fontWeight(selectedFilter == filler ? .semibold : .regular)
                                if selectedFilter == filler {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 180, height:1)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                }else{
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 180, height:1)
                                }
                            }.onTapGesture {
                                withAnimation(.spring()){
                                    selectedFilter = filler
                                }
                            }
                            
                        }
                    
                    }//end vstack
                    LazyVStack{
                        ForEach(0...10,id: \.self){
                            
                            thread in
                            ThreadCell()
                        }
                    }
                    
                }.padding(.vertical,8)
            }
        }.padding(.horizontal)
    }
}

#Preview {
    ProfilView()
}
