


protocol AuthRepository {
    func login(email: String, password: String) async throws
    func register(email: String, password: String) async throws
    func logout() throws
    func getCurrentUser() -> String?
}

