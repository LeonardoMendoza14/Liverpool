import SwiftUI

struct CustomButton: View {
    let text: String
    let action: () async -> Void  // <- async action
    
    var body: some View {
<<<<<<< HEAD
        Button {
            Task {
                await action()
=======
        
        Button(action: {
            
        }){
            Button(action: {
                action()
            }){
                Text("Login")
                    .frame(maxWidth: .infinity, minHeight: 14)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.primaryPink)
                    .cornerRadius(15)
>>>>>>> Login
            }
        } label: {
            Text(text)
                .frame(maxWidth: .infinity, minHeight: 14)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(15)
        }
    }
}

