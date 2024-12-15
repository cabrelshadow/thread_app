//
//  RegistrationView.swift
//  ThreadApp
//
//  Created by KarmL on 12/12/2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email=""
    @State private var password=""
    @State private var fullname=""
    @State private var username=""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(){
            Spacer()
            Image("thread-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 120,height: 120)
            VStack(){
                TextField("entrer your email",text: $email)
                    .autocapitalization(.none)
                    .modifier(ThreadTextFieldModifier())
                
                SecureField("enter your password",text: $password)
                    .modifier(ThreadTextFieldModifier())
                
                TextField("enter your fullname",text: $fullname)
                    .modifier(ThreadTextFieldModifier())
                
                TextField("enter your username",text: $username)
                    .modifier(ThreadTextFieldModifier())
               
                
            }.padding(.vertical)
            
            Button{
                
            }label: {
                Text( "Sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352,height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }
            Spacer()
            Divider()
            Button{
                dismiss()
                    
            }label: {
                HStack(){
                    Text("Already have an account?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }.padding(.vertical,16)
               
            }
        }
        
    }
}

#Preview {
    RegistrationView()
}
