import Foundation

class HomeViewModel: ObservableObject {
    @Published var products: [Product] = []

    func fetchProducts() {
        // Aquí puedes llamar a tu use case o un mock local
        self.products = [
            Product(id: 1, name: "Eau de parfum", priceRange: "$1,930.00–$4,350.00", image: "perfume"),
            Product(id: 2, name: "Eau de parfum", priceRange: "$1,930.00–$4,350.00", image: "perfume"),
            // etc...
        ]
    }
}

