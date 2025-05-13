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
                .foregroundColor(Color.white.opacity(0.5))

            // Caja del TextField
            TextField(placeholder, text: $text)
                .padding()
                .background(Color.white.opacity(0.05)) // Fondo oscuro translúcido
                .cornerRadius(12)
                .foregroundColor(.white)
                .autocapitalization(.none)
                .keyboardType(keyboardType)
        }
    }
}
