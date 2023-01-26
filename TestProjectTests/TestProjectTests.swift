//
//  TestProjectTests.swift
//  TestProjectTests
//
//  Created by SF on 01.06.2021.
//

import XCTest
@testable import TestProject

class TestProjectTests: XCTestCase {
    
    let mockUser = UserMock(firstName: "Andry", lastName: "Jigo", bio: "I love sf", city: "Moscow", friends: [], isClosed: true)
    let mockFriend = UserMock(firstName: "Sam", lastName: "Majow", bio: "I love sf", city: "St.Petersburg", friends: [], isClosed: false)
    let mockFirstName = "Alex"
    let mockLastName = "Jackson"
    let mockCity = "Astana"
    let mockBio = "I love sf"
    let mockIsClosed = true
    
    override func setUpWithError() throws {
        
    }
    
    override func tearDownWithError() throws {
        
    }
    
    
    func testChangeName() throws {
        mockUser.changeName(mockFirstName)
        XCTAssertTrue(mockUser.changeNameCalledCount > 0)
        XCTAssertTrue(mockUser.changeNameCalled)
        XCTAssertTrue(mockUser.firstName == mockFirstName)
    }
    
    func testChangeLastName() throws {
        mockUser.changeLastName(mockLastName)
        XCTAssertTrue(mockUser.changeLastNameCalledCount > 0)
        XCTAssertTrue(mockUser.changeLastNameCalled)
        XCTAssertTrue(mockUser.lastName == mockLastName)
    }
    
    func testChangeBio() throws {
        mockUser.changeBio(mockBio)
        XCTAssertTrue(mockUser.changeBioCalledCount > 0)
        XCTAssertTrue(mockUser.changeBioCalled)
        XCTAssertTrue(mockUser.bio == mockBio)
    }
    
    func testChangeCity() throws {
        mockUser.changeCity(mockCity)
        XCTAssertTrue(mockUser.changeCityCalledCount > 0)
        XCTAssertTrue(mockUser.changeCityCalled)
        XCTAssertTrue(mockUser.city == mockCity )
    }
    
    func testChangeClosed() throws {
        mockUser.changeClosed(mockIsClosed)
        XCTAssertTrue(mockUser.changeClosedCalledCount > 0)
        XCTAssertTrue(mockUser.changeClosedCalled)
        XCTAssertTrue(mockUser.isClosed == mockIsClosed)
    }
    
    
    func testAddFriend() throws {
        mockUser.addFriend(mockFriend)
        XCTAssertTrue(mockUser.addFriendCalledCount > 0)
        XCTAssertTrue(mockUser.addFriendCalled)
        XCTAssertTrue(mockUser.friends.count > 0)
        XCTAssertEqual(mockUser.friends[0], mockFriend)
    }
    
    
    
}
