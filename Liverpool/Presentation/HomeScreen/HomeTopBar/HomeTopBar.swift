import SwiftUI

struct HomeTopBar: View {
    var body: some View {
        VStack(spacing: 12) {
            Spacer()
                .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.top ?? 44)

            HStack {
                Image(systemName: "storefront.fill")
                Text("Elige una tienda")
                Spacer()
            }
            .foregroundColor(.white)

            HStack(spacing: 8) {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.white)
                    .frame(height: 36)
                    .overlay(
                        TextField("Buscar", text: .constant(""))
                            .padding(.horizontal)
                    )

                Button {
                    // Acción
                } label: {
                    Image(systemName: "heart")
                        .foregroundColor(.white)
                }

                Button {
                    // Acción
                } label: {
                    Image(systemName: "tag.fill")
                        .foregroundColor(.white)
                }
            }

            HStack(spacing: 0) {
                Button("Nuevo") {}
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.primaryPink)
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                Button("Para ti") {}
                    .foregroundColor(.primaryPink)
                    .padding()
            }
            .background(Color.white)
            .cornerRadius(20)
        }
        .padding()
        .background(Color.primaryPink)
    }
}