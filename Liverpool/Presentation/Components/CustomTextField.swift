//
//  CustomTextField.swift
//  LearnOnline
//
//  Created by Mac OS lab on 10/05/25.
//

import SwiftUI

struct CustomTextField: View {
    let label: String
    let placeholder: String
    @Binding var text: String
    var isSecure: Bool = false
    var keyboardType: UIKeyboardType = .default
    

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // Etiqueta superior
            Text(label)
                .font(.subheadline)
                .foregroundColor(Color.black)

            // Caja del TextField
            TextField(placeholder, text: $text)
                .padding()
                .background(Color.black.opacity(0.05))
                .cornerRadius(12)
                .foregroundColor(.black)
                .autocapitalization(.none)
                .keyboardType(keyboardType)
        }
    }
}
