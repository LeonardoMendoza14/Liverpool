import SwiftUI

struct TitleProductCard: View {
    let product: Product

    var body: some View {
        VStack(spacing: 0) {
            // Imagen con esquinas redondeadas solo arriba
            Image(product.image)
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 200)
                .clipped()
                .clipShape(RoundedCorner(radius: 16, corners: [.topLeft, .topRight]))
            
            // Texto desplazado hacia abajo
            VStack(alignment: .leading, spacing: 4) {
                Text(product.name)
                    .font(.headline)
                    .foregroundColor(.black)
            }
            .padding()
            .frame(width: 160, alignment: .leading)
            .background(Color.white)
            .clipShape(RoundedCorner(radius: 16, corners: [.topRight, .bottomRight]))
            .offset(y: 12) // 👈 Aquí se aplica el efecto "flotante"
        }
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}
