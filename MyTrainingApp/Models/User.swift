//
//  User.swift
//  MyTrainingApp
//
//  Created by Ilya on 20.06.22.
//

import Foundation
import Firebase

struct User {

let uid: String
let email: String

    init(user: Firebase.User) {
        self.uid = user.uid
        self.email = user.email ?? ""
    }
}
