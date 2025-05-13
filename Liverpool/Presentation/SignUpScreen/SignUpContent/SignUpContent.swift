//
//  SignUpContent.swift
//  Liverpool
//
//  Created by Mac OS lab on 13/05/25.
//

import Foundation
import SwiftUI

struct SignUpContent: View {
    @EnvironmentObject private var viewModel: SignUpViewModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Spacer()
            
            Text("Sign Up")
                .foregroundStyle(.white)
                .font(.system(size: 32, weight: .light, design: .default))
            
            Spacer()
                .frame(maxHeight: 20)
            
            SignUpFormat()
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}


#Preview {
    LoginContent()
}
