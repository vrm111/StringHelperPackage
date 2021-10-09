import Foundation

public struct StringHelperPackage {
    
    func localizedString(_ string: String) -> String {
        string.localized()
    }
    
    func joinAttributedStrings(_ strings: NSAttributedString...) -> NSAttributedString {
        return NSAttributedString(string: strings.map { $0.string }.joined())
    }
    
}

extension String {
    public func localized(comment: String = "") -> String {
        return NSLocalizedString(self, comment: comment)
    }
}
