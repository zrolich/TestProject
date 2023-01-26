//
//  UserMock.swift
//  TestProject
//
//  Created by Zhanna Rolich on 26.01.2023.
//

import Foundation

class UserMock: User {
 
    var changeNameCalledCount = 0
    var changeLastNameCalledCount = 0
    var changeBioCalledCount = 0
    var addFriendCalledCount = 0
    var changeCityCalledCount = 0
    var changeClosedCalledCount = 0
 
    var changeNameCalled = false
    var changeLastNameCalled = false
    var changeBioCalled = false
    var addFriendCalled = false
    var changeCityCalled = false
    var changeClosedCalled = false
    
   
    override func changeName(_ firstName: String) {
        changeNameCalledCount += 1
        changeNameCalled = true
        self.firstName = firstName
    }
 
    override func changeLastName(_ lastName: String) {
        changeLastNameCalledCount += 1
        changeLastNameCalled = true
        self.lastName = lastName
    }
 
    override func changeBio(_ bio: String) {
        changeBioCalledCount += 1
        changeBioCalled = true
        self.bio = bio
    }
 
    override func addFriend(_ friend: User) {
        addFriendCalledCount += 1
        addFriendCalled = true
        friends.append(friend)
    }
 
    override func changeCity(_ city: String) {
        changeCityCalledCount += 1
        changeCityCalled = true
        self.city = city
    }
    
   override func changeClosed(_ isClosed: Bool) {
       changeClosedCalledCount += 1
       changeClosedCalled = true
        self.isClosed = isClosed
    }
    
}
