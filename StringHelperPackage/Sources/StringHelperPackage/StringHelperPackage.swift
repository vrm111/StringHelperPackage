// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public struct StringHelperPackage {
    
    public init() {}
    
    public func localizedString(_ string: String) -> String {
        string.localized()
    }
        
    public func joinAttributedStrings(_ strings: NSAttributedString...) -> NSAttributedString {
        return NSAttributedString(string: strings.map { $0.string }.joined())
    }
}

extension String {
    public func localized(comment: String = "") -> String {
        return NSLocalizedString(self, comment: comment)
    }
}
