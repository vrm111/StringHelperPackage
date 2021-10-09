import XCTest
@testable import StringHelperPackage

final class StringHelperPackageTests: XCTestCase {
    func testExample() throws {
        XCTAssertEqual(StringHelperPackage().localizedString("Hello, World!"), "Hello, World!")
        XCTAssertEqual(StringHelperPackage().joinAttributedStrings(
                    NSAttributedString(string: "Hello, "),NSAttributedString(string: "World!")).string,
                       "Hello, World!"
        )
        
        let texto0 = NSAttributedString(string: "Hello, ")
        let texto1 = NSAttributedString(string: "World!")
        let textoUnion = StringHelperPackage().joinAttributedStrings(texto0, texto1)
        let textoCorrecto = "Hello, World!"
        XCTAssert(textoUnion.string == textoCorrecto)
    }
    
    static var allTest = [("testExample",testExample)]
}
