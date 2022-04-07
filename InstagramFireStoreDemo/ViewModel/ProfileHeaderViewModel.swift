//
//  ProfileHeaderViewModel.swift
//  InstagramFireStoreDemo
//
//  Created by Yosuke Sakurai on 4/7/22.
//

import Foundation

struct ProfileHeaderViewModel {
    let user: User
    
    var fullname: String {
        return user.fullname
    }
    
    var profileImageUrl: URL? {
        return URL(string: user.profileImageUrl)
    }
    
    init(user: User) {
        self.user = user
    }
}
