//
//  User.swift
//  TestProject
//
//  Created by SF on 01.06.2021.
//

import Foundation

class User: Equatable {
    
    static func == (lhs: User, rhs: User) -> Bool {
        if lhs.firstName != rhs.firstName {return false}
        if lhs.lastName != rhs.lastName {return false}
        if lhs.bio != rhs.bio {return false}
        if lhs.city != rhs.city {return false}
        if lhs.friends != rhs.friends {return false}
        if lhs.isClosed != rhs.isClosed {return false}
        return true
    }
    
    
    var firstName: String
    var lastName: String
    var bio: String
    var city: String
    var friends: [User]
    var isClosed: Bool
    
    init(firstName: String, lastName: String, bio: String, city: String, friends: [User], isClosed: Bool) {
        self.firstName = firstName
        self.lastName = lastName
        self.bio = bio
        self.city = city
        self.friends = friends
        self.isClosed = isClosed
    }
    
    func changeCity(_ city: String) {
        self.city = city
    }
    
    func changeClosed(_ isClosed: Bool) {
        self.isClosed = isClosed
    }
    
    func changeName(_ firstName: String) {
        self.firstName = firstName
    }
    
    func changeLastName(_ lastName: String) {
        self.lastName = lastName
    }
    
    func changeBio(_ bio: String) {
        self.bio = bio
    }
    
    func addFriend(_ friend: User) {
        friends.append(friend)
    }
}

