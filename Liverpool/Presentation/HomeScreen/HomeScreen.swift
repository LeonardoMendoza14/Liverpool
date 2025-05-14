import SwiftUI

struct HomeScreen: View {
    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        VStack(spacing: 0) {
            HomeTopBar()

            ScrollView {
                VStack(spacing: 16) {
                    ProductCarouselView()

                    Text("Fragancias para todos los gustos")
                        .font(.headline)
                        .padding(.horizontal)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            ForEach(viewModel.products) { product in
                                SimpleProductCard(product: product)
                            }
                        }
                        .padding(.horizontal)
                    }

                    VStack(alignment: .leading, spacing: 4) {
                        Text("Accesorios para el gran día ✨")
                            .font(.headline)
                        Text("Detalles que hacen brillar tu momento")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            ForEach(viewModel.products) { product in
                                TitleProductCard(product: product)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }

            Spacer()
        }
        .ignoresSafeArea(edges: .top)
        .background(Color.white)
        .onAppear {
            viewModel.fetchProducts()
        }
    }
}

#Preview{
    HomeScreen()
}
