import XCTest
@testable import SpellKit

final class SpellKitTests: XCTestCase {
    func testRetrieveClasses() async throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let classList = await ClassHttpClient().getClasses()
        
        XCTAssertGreaterThan(classList.count, 0)
        print(classList)
        
    }
}
