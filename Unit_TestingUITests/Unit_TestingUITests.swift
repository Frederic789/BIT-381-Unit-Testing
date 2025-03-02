//
//  Unit_TestingUITests.swift
//  Unit_TestingUITests
//
//  Created by Mike Panitz on 6/8/23.
//

import XCTest

final class Unit_TestingUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.

        let app = XCUIApplication()
        app.launch()
        app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.tap()
        app.textFields["Type your name here:"].tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.tap()

                
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testUI() throws {
        
        let app = XCUIApplication()
        app.launch()
        
        let inputField = app.textFields["Type your name here:"]
        inputField.tap()
        inputField.typeText("Hello")
        let helloStaticText = app.staticTexts["UserOutput"].value as! String
        print("FOUND: "   + helloStaticText + " ===========================================================================================")
    }
    
    
    let app = XCUIApplication()
    app.textFields["Type your name here:"].tap()
    app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.tap()

    func testUITypingName() throws {
        let app = XCUIApplication()
        app.launch()

        // Find the TextField and tap it
        let inputField = app.textFields["Type your name here:"]
        inputField.tap()

        // Type your name into the TextField
        inputField.typeText("Your Name")

        // Find the Text() view at the bottom and assert its value
        let outputText = app.staticTexts["UserOutput"]
        XCTAssertEqual(outputText.label, "Your Name", "Expected 'UserOutput' to display 'Your Name'")
    }
    
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
