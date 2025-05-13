//
//  LoginFormat.swift
//  LearnOnline
//
//  Created by Mac OS lab on 09/05/25.
//

import Foundation
import SwiftUI

struct SignUpFormat: View {
    @EnvironmentObject private var viewModel: SignUpViewModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 8){
            Spacer()
                .frame(maxHeight: 60)
            
            CustomTextField(label: "Nombre", placeholder: "Nombre(s)", text: $viewModel.nombre)
            CustomTextField(label: "Apellido Paterno", placeholder: "Apellido Paterno", text: $viewModel.apellidoPaterno)
            CustomTextField(label: "Apellido Materno", placeholder: "Apellido Materno", text: $viewModel.apellidoMaterno)
            CustomTextField(label: "Email", placeholder: "Correo electrónico", text: $viewModel.email, keyboardType: .emailAddress)
            CustomTextField(label: "Contraseña", placeholder: "Contraseña", text: $viewModel.password)
            CustomTextField(label: "Confirmar Contraseña", placeholder: "Repite la contraseña", text: $viewModel.confirmPassword)
            
            if let error = viewModel.errorMessage {
                Text(error)
                    .foregroundColor(.red)
            }
            
            Spacer()
                .frame(maxHeight: 16)
            
            CustomButton(text: viewModel.isLoading ? "Registrando..." : "Registrarse") {
                await viewModel.register()
            }
            
            Spacer()
                .frame(maxHeight: 100)
            
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 32)
        .background(Color.white)
        .clipShape(RoundedCorner(radius: 80, corners: [.topLeft]))
    }
}

#Preview {
    LoginFormat()
}
