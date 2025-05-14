import SwiftUI

struct SimpleProductCard: View {
    let product: Product

    var body: some View {
        VStack(spacing: 4) {
            Image(product.image)
                .resizable()
                .frame(width: 100, height: 100)
            Text(product.name)
                .font(.subheadline)
            Text(product.priceRange)
                .foregroundColor(.red)
                .font(.caption)
        }
        .frame(width: 120)
    }
}
