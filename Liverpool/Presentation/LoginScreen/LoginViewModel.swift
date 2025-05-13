//
//  LoginViewModel.swift
//  LearnOnline
//
//  Created by Mac OS lab on 12/05/25.
//

import SwiftUI

class LoginViewModel : ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    var isValid: Bool {
        !email.isEmpty && !password.isEmpty
    }
    
    func login() {
        fatalError()
    }
}
