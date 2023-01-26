//
//  TestProjectUITests.swift
//  TestProjectUITests
//
//  Created by SF on 01.06.2021.
//

import XCTest

class TestProjectUITests: XCTestCase {

    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testViews() {
        
        let app = XCUIApplication()
        app.launch()
        
        app.tables["tableView"].staticTexts["0"].tap()
        XCTAssertEqual(app.staticTexts["fullNameLabel"].label, "Петров Петр")
        XCTAssertEqual(app.staticTexts["city"].label, "Москва")
        XCTAssertEqual(app.staticTexts["friendsLabel"].label, "Иванов Иван" + "\n" + "Сергеев Сергей")
        XCTAssertTrue(app.switches["pageSwitch"].exists)
        XCUIApplication().swipeDown()
        XCTAssertTrue(app.tables["tableView"].exists)
    }
    
    func testWithRecord() throws {
        
        let app = XCUIApplication()
        app.launch()

//в этом методе изложена запись теста посредством record в XCode
        app.tables["tableView"]/*@START_MENU_TOKEN@*/.staticTexts["0"]/*[[".cells[\"Петров Петр\"]",".staticTexts[\"Петров Петр\"]",".staticTexts[\"0\"]",".cells[\"tableViewCell\"]"],[[[-1,2],[-1,1],[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["city"]/*[[".staticTexts[\"Москва\"]",".staticTexts[\"city\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["friendsTitle"]/*[[".staticTexts[\"Друзья:\"]",".staticTexts[\"friendsTitle\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["friendsLabel"]/*[[".staticTexts[\"Иванов Иван\\nСергеев Сергей\"]",".staticTexts[\"friendsLabel\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["pagesProperty"]/*[[".staticTexts[\"Настройки страницы:\"]",".staticTexts[\"pagesProperty\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["pageAvailable"]/*[[".staticTexts[\"Доступ к странице:\"]",".staticTexts[\"pageAvailable\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app.windows.children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.swipeDown()
                
    }
}
