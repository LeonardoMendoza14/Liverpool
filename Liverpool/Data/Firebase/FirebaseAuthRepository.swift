import FirebaseAuth

class FirebaseAuthRepository: AuthRepository {
    func login(email: String, password: String) async throws {
        let _ = try await Auth.auth().signIn(withEmail: email, password: password)
    }

    func register(email: String, password: String) async throws {
        let _ = try await Auth.auth().createUser(withEmail: email, password: password)
    }

    func logout() throws {
        try Auth.auth().signOut()
    }

    func getCurrentUser() -> String? {
        Auth.auth().currentUser?.email
    }
}

