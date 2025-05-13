import Foundation
import SwiftUI

struct LoginContent: View {
    @EnvironmentObject private var viewModel: LoginViewModel
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Spacer()
            
            Image("LiverpoolLogo")
                .resizable()
                .frame(width: 200, height: 200)
            
            Spacer()
            
            LoginFormat()
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    LoginContent()
}
