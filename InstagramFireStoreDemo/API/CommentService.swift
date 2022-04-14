//
//  CommentService.swift
//  InstagramFireStoreDemo
//
//  Created by Yosuke Sakurai on 4/12/22.
//

import Firebase

struct CommentService {
    
    static func uploadComment(comment: String, postId: String, user: User, completion: @escaping(FirestoreCompletion)) {
        
        let data: [String: Any] = [
            "uid": user.uid,
            "comment": comment,
            "timestamp": Timestamp(date: Date()),
            "username": user.username,
            "profileImageUrl": user.profileImageUrl
        ]
        
        COLLECTION_POSTS.document(postId).collection("comments").addDocument(data: data, completion: completion)
    }
    
    static func fetchComments(forPost postId: String, completion: @escaping([Comment]) -> Void) {
        var comments = [Comment]()
        let query = COLLECTION_POSTS.document(postId).collection("comments")
            .order(by: "timestamp", descending: true)
        
        query.addSnapshotListener { (snapshot, error) in
            snapshot?.documentChanges.forEach( {change in
                if change.type == .added {
                    let dictionary = change.document.data()
                    let comment = Comment(dictionary: dictionary)
                    comments.append(comment)
                }
            })
            completion(comments)
        }
    }
}
