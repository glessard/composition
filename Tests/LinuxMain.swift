import XCTest

import compositionTests

var tests = [XCTestCaseEntry]()
tests += compositionTests.__allTests()

XCTMain(tests)
