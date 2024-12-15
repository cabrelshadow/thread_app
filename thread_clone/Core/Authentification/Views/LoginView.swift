//
//  LoginView.swift
//  ThreadApp
//
//  Created by KarmL on 11/12/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email=""
    @State private var password=""
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Image("thread-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120,height: 120)
                    .padding()
                VStack{
                    TextField("Enter your email",text: $email)
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)
                        .modifier(ThreadTextFieldModifier())
                    SecureField("Enter your password",text: $password)
                        .modifier(ThreadTextFieldModifier())
                    
                }
                NavigationLink{
                    Text("Forgot password")
                } label: {
                    Text("Forgot password ?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing,28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity,alignment: .trailing)
                }
                Button{
                    
                }label: {
                    Text( "Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352,height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                Spacer()
                Divider()
                NavigationLink{   
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                }label: {
                    HStack(){
                        Text("Don't have an account ?")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                        
                        Text("Sign Up")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }.padding(.vertical,16)
                   
                }
                }
            }
        }
    }
 

#Preview {
    LoginView()
}
