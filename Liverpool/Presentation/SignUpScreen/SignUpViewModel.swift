import SwiftUI
import Foundation
import FirebaseFirestore
import FirebaseAuth

@MainActor
class SignUpViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
    @Published var nombre: String = ""
    @Published var apellidoPaterno: String = ""
    @Published var apellidoMaterno: String = ""
    @Published var isLoading = false
    @Published var errorMessage: String?
    @Published var isRegistered = false

    private let authRepository: AuthRepository

    init(authRepository: AuthRepository = FirebaseAuthRepository()) {
        self.authRepository = authRepository
    }

    var isValid: Bool {
        !email.isEmpty &&
        !password.isEmpty &&
        password == confirmPassword &&
        !nombre.isEmpty &&
        !apellidoPaterno.isEmpty &&
        !apellidoMaterno.isEmpty
    }

    func register() async {
        guard isValid else {
            DispatchQueue.main.async {
                self.errorMessage = "Todos los campos son obligatorios y las contraseñas deben coincidir."
            }
            return
        }

        DispatchQueue.main.async {
            self.isLoading = true
            self.errorMessage = nil
        }

        do {
            try await authRepository.register(email: email, password: password)

            // Guardar datos adicionales en Firestore Pendiente pero listo
            try await saveUserData()

            DispatchQueue.main.async {
                self.isRegistered = true
            }

        } catch {
            DispatchQueue.main.async {
                self.errorMessage = error.localizedDescription
                self.isRegistered = false
            }
        }

        DispatchQueue.main.async {
            self.isLoading = false
        }
    }

    private func saveUserData() async throws {
        let db = Firestore.firestore()
        let uid = Auth.auth().currentUser?.uid ?? UUID().uuidString

        let userData: [String: Any] = [
            "nombre": nombre,
            "apellidoPaterno": apellidoPaterno,
            "apellidoMaterno": apellidoMaterno,
            "email": email
        ]

        try await db.collection("usuarios").document(uid).setData(userData)
    }
}
