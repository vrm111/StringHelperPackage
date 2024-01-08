import XCTest
@testable import StringHelperPackage

final class StringHelperPackageTests: XCTestCase {
    func testExample() {
        XCTAssertEqual(StringHelperPackage().localizedString("Hello, World!"), "Hello, World!")
        XCTAssertEqual(StringHelperPackage().joinAttributedStrings(
            NSAttributedString(string: "Hello, "),
            NSAttributedString(string: "World!"))
                .string, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
