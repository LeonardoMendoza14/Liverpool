import Foundation

class HomeViewModel: ObservableObject {
    @Published var products: [Product] = []

    func fetchProducts() {
        self.products = [
            Product(id: 1, name: "Eau de parfum", priceRange: "$1,930.00–$4,350.00", image: "perfume"),
            Product(id: 2, name: "Bright Crystal", priceRange: "$1,930.00–$4,350.00", image: "perfume1"),
            Product(id: 3, name: "Voluminous Lash", priceRange: "$1,930.00–$4,350.00", image: "perfume3"),
            Product(id: 4, name: "Essencial de Nourriture", priceRange: "$1,930.00–$4,350.00", image: "perfume4"),
            Product(id: 5, name: "Grand Blotter", priceRange: "$1,930.00–$4,350.00", image: "perfume1"),
            Product(id: 6, name: "Eau de parfum", priceRange: "$1,930.00–$4,350.00", image: "perfume1"),
            Product(id: 7, name: "Eau de parfum", priceRange: "$1,930.00–$4,350.00", image: "perfume1"),
        ]
    }
}
