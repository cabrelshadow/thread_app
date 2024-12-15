//
//  ThreadCell.swift
//  ThreadApp
//
//  Created by KarmL on 13/12/2024.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack(){
            HStack(alignment: .top, spacing: 12){
                CircularImageView()
                VStack(alignment: .leading,spacing:5){
                    HStack {
                        Text("charles_leclerc")
                            .font(.headline)
                            .fontWeight(.semibold)
                        Spacer()
                        Text("10m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray))
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }

                    }
                    Text("home race on Monoca was amazing")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    HStack(spacing:10){
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                               
                        }

                        Button {
                            
                        } label: {
                            Image(systemName: "bubble.right")
                               
                        }

                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                               
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                                
                        }
                        
                    }
                    .padding(.vertical,7)
                        .foregroundColor(Color(.black))
                   
                }
            
            }
            Divider()
                .background(Color.gray)
        }.padding()
    }
}

#Preview {
    ThreadCell()
}
