import XCTest
import SwiftyJSON
@testable import SpellKit

final class SpellKitTests: XCTestCase {
    func testRetrieveClasses() async throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let classList = await ClassHttpClient().getClasses()
        
        XCTAssertEqual(classList.count, 12)
    }
    
    func testRetrieveSpellsForClass() async throws {
        let spellList = await SpellsHttpClient().getSpellsForClass(withIndex: "bard")
        XCTAssertEqual(spellList.count, 111)
    }
    
    func testRetrieveSpell() async throws {
        guard let spell = await SpellsHttpClient().getSpell(withIndex: "mass-suggestion") else {
            XCTFail("return nil from api")
            return
        }
        XCTAssertEqual(spell.index, "mass-suggestion")
    }
    
    func testInitializeSpellFromJSON() {
        if let path = Bundle.main.path(forResource: "spell", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let spellJSON = JSON(data)
                let spell = Spell(json: spellJSON)
                XCTAssertEqual(spell.name, "Sacred Flame")
              } catch {
                   // handle error
              }
        }
    }
}
