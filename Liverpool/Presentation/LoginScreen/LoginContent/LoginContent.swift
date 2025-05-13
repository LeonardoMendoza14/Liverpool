//
//  LoginContent.swift
//  LearnOnline
//
//  Created by Mac OS lab on 09/05/25.
//

import Foundation
import SwiftUI

struct LoginContent: View {
    @EnvironmentObject private var viewModel: LoginViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Spacer()
            Text("Log In")
                .foregroundStyle(.white)
                .font(.system(size: 40, weight: .heavy))
                .padding(.leading, 32)
            
            Spacer()
                .frame(maxHeight: 8)
            
            LoginFormat()
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    LoginContent()
}
