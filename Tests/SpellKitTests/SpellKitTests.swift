import XCTest
@testable import SpellKit

final class SpellKitTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SpellKit().text, "Hello, World!")
    }
}
