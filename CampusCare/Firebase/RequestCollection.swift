
final class RequestCollection {
    private let requestsCollectionRef = FirestoreManager.shared.db.collection("Requests")
    
    func createNewRequest(data: [String: Any], completion: @escaping (Result<Void, Error>) -> Void) {
        
        // 1. Send the data to Firestore to create a new document with an auto-generated ID
        requestsCollectionRef.addDocument(data: data) { error in
            
            // 2. Check the 'error' parameter
            if let error = error {
                // 3. If an error occurred, print it and call the completion handler with the failure
                print("🚨 Error creating new request document: \(error.localizedDescription)")
                completion(.failure(error))
            } else {
                // 4. If 'error' is nil, the operation was successful. Call completion with success.
                print("✅ New request document successfully created.")
                completion(.success(()))
            }
        }
    }
}
