//
//  BTL_QAUITests.swift
//  BTL_QAUITests
//
//  Created by Auntor Acharja on 26/11/22.
//

import XCTest

class BTL_QAUITests: XCTestCase {

//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//
//        // In UI tests it is usually best to stop immediately when a failure occurs.
//        continueAfterFailure = false
//
//        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }


//
//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
    
    func testAppLaunchAndTerminatedWithSleepTime() throws{
        let app = XCUIApplication()
        app.launch()
        // Sleep time in Second
        sleep(10)
        print("Test function execution Done")
        app.terminate()
    }
    
    func testRecordAndPlay() throws{
        let app = XCUIApplication()
        app.launch()
        let element = XCUIApplication().windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        element.tap()
        element.children(matching: .staticText).matching(identifier: "Sr. QA I").element(boundBy: 1).tap()
        debugPrint("The Record and Play test function run DONE")
        
    }
    
    func testSwipeDifferentSide() throws{
        let app = XCUIApplication()
        app.launch()
        app.swipeLeft()
        app.swipeRight()
        app.swipeUp()
        app.swipeDown()
        debugPrint("Swipe Different Side test function run DONE")
    }

    
    
}
