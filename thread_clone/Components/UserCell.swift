//
//  UserCell.swift
//  thread_clone
//
//  Created by KarmL on 15/12/2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularImageView()
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
    }
}

#Preview {
    UserCell()
}
