import SwiftUI

struct ProductCarouselView: View {
    var body: some View {
        TabView {
            ForEach(1...3, id: \.self) { index in
                Image("carousel\(index)")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 200)
    }
}