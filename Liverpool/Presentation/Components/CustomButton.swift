import SwiftUI

struct CustomButton: View {
    let text: String
    let action: () async -> Void  // <- async action
    
    var body: some View {
        Button {
            Task {
                await action()
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

