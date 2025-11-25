
import FirebaseFirestore

final class FirestoreManager {
    // Shared instance for easy access across the app
    static let shared = FirestoreManager()
    
    let db: Firestore
    
    private init() {
   
        self.db = Firestore.firestore()
    }
}
