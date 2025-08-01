//
//  xcode_cloud_practice_jkegUITestsLaunchTests.swift
//  xcode_cloud_practice_jkeg
//
//  Created on 2025/08/01.
//  ©︎JVCKENWOOD Corporation
//

import XCTest

final class xcode_cloud_practice_jkegUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
