//
//  LoginViewModel.swift
//  LearnOnline
//
//  Created by Mac OS lab on 12/05/25.
//

import SwiftUI
import Foundation

class LoginViewModel : ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String?
    @Published var isLoading: Bool = false
    @Published var isLogged: Bool = false
    
    private let authRepository: AuthRepository
    
    init(authRepository: AuthRepository = FirebaseAuthRepository()) {
        self.authRepository = authRepository
    }
    
    var isValid: Bool {
        !email.isEmpty && !password.isEmpty
    }
    
    func login() async {
        isLoading = true
        errorMessage = nil
        
        do {
            try await authRepository.login(email: email, password: password)
            isLogged = true
        } catch {
            errorMessage = "Login failed: \(error.localizedDescription)"
            isLogged = false
        }
        
        isLoading = false
    }
    
}
