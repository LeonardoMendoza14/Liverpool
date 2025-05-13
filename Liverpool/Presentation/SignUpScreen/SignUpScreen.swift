import Foundation
import SwiftUI

struct SignUpScreen: View {
    @StateObject private var viewModel = SignUpViewModel()
    
    var body: some View{
        NavigationStack {
            ZStack{
                Color.primaryPink
                VStack {
                    SignUpContent()
                        .environmentObject(viewModel)
                }
            }
            .ignoresSafeArea()
        }
    }
    
}
