
import FirebaseFirestore

final class FirestoreManager {
    // Shared instance for easy access across the app
    static let shared = FirestoreManager()
    
    // The private, immutable reference to the database instance
    let db: Firestore
    
    private init() {
        // Initializes the reference when the shared instance is first accessed
        self.db = Firestore.firestore()
    }
}
