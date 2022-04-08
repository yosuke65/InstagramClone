//
//  Constants.swift
//  InstagramFireStoreDemo
//
//  Created by Yosuke Sakurai on 4/6/22.
//

import Firebase

let COLLECTION_USERS = Firestore.firestore().collection("users")
let COLLECTION_FOLLOWERS = Firestore.firestore().collection("followers")
let COLLECTION_FOLLOWING = Firestore.firestore().collection("following")
