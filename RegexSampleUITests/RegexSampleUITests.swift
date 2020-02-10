//
//  RegexSampleUITests.swift
//  RegexSampleUITests
//
//  Created by Byunsangjin on 10/02/2020.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import XCTest

class RegexSampleUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        let inputTextField = app.textFields["InputTextField"]
        inputTextField.tap()
        inputTextField.typeText("86400.222")
        
        XCTAssertEqual(inputTextField.value as! String, "8640.22")
    }
    
    
}
