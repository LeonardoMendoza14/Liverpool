//
//  LoginScreen.swift
//  LearnOnline
//
//  Created by Mac OS lab on 09/05/25.
//

import Foundation
import SwiftUI

struct LoginScreen: View{
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View{
        NavigationStack {
            ZStack{
                    Color.mainBlack
                    VStack {
                        LoginContent()
                            .environmentObject(viewModel)
                    }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    LoginScreen()
}
