//
//  ThreadTextFieldModifier.swift
//  ThreadApp
//
//  Created by KarmL on 12/12/2024.
//

import SwiftUI

struct ThreadTextFieldModifier:ViewModifier{
    func body(content:Content) ->some View{
        content
            .font(.footnote)
            .padding(12)
            .background(Color("inputcolor"))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
}
