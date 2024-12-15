//
//  CircularImageView.swift
//  thread_clone
//
//  Created by KarmL on 15/12/2024.
//

import SwiftUI

struct CircularImageView: View {
    var body: some View {
        Image("p2")
            .resizable()
            .scaledToFill()
            .frame(width:45, height: 45)
            .clipShape(.circle)
    }
}

#Preview {
    CircularImageView()
}
