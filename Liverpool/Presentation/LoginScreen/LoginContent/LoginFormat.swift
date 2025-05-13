//
//  LoginFormat.swift
//  LearnOnline
//
//  Created by Mac OS lab on 09/05/25.
//

import Foundation
import SwiftUI

struct LoginFormat: View {
    @EnvironmentObject private var viewModel: LoginViewModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 8){
            Spacer()
                .frame(maxHeight: 20)
            
            Text("Log In")
                .font(.system(size: 40, weight: .heavy))
            
            Spacer()
                .frame(maxHeight: 20)
            
            CustomTextField(label:"Your Email",placeholder:"Email", text: $viewModel.email, keyboardType: .emailAddress)
            Spacer()
                .frame(maxHeight: 8)
            CustomTextField(label: "Your Password", placeholder: "Password", text: $viewModel.password, isSecure: true)
            HStack(alignment: .center) {
                Button(action:{}){
                    Text("Forget Password?")
                }
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
            Spacer()
                .frame(maxHeight: 4)
            
            CustomButton(text:"Log In", action: viewModel.login)
            
            Spacer()
                .frame(maxHeight: 8)
            
            HStack {
                Text("Don't have an account? ")
                    .foregroundStyle(.gray)
                Button(action: {}){
                    Text("Sign Up")
                }
            }
            
            Spacer()
                .frame(maxHeight: 8)
            
            HStack {
                Divider()
                    .frame(maxWidth: .infinity, maxHeight:1)
                    .background(Color.gray)
                
                Text("Or login with")
                    .foregroundColor(.gray)
                    .padding(.horizontal, 16)
                    .layoutPriority(1)
                
                Divider()
                    .frame(maxWidth: .infinity, maxHeight:1)
                    .background(Color.gray)
            }
            
            Spacer()
                .frame(maxHeight: 24)
            
            Button(action: {}){
                Image("googleAuth")
                    .resizable()
                    .frame(width: 48, height: 48)
            }
            
            Spacer()
                .frame(maxHeight: 100)
            
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 32)
        .background(Color.white)
        .clipShape(RoundedCorner(radius: 80, corners: [.topLeft]))
    }
}

#Preview {
    LoginFormat()
}
