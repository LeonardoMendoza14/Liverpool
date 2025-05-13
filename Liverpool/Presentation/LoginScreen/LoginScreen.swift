
import Foundation
import SwiftUI

struct LoginScreen: View{
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View{
        NavigationStack {
            ZStack{
                    Color.primaryPink
                    VStack {
                        LoginContent()
                            .environmentObject(viewModel)
                    }
            }
            .ignoresSafeArea()
            .navigationDestination(isPresented: $viewModel.isLogged){
                
            }
        }
    }
}

#Preview {
    LoginScreen()
}
