import SwiftUI

struct CustomButton: View {
    let text: String
    let action: () async -> Void

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
                .background(Color.primaryPink)
                .cornerRadius(15)
        }
    }
}
