//
//  String+Extensions.swift
//
//  Created by Eric DeLabar on 9/20/22.
//

import Foundation

extension String {
    
    public func stripNonDigits() -> String {
        components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
    }
    
}

extension String? {
    
    public var notEmpty: Bool {
        guard let self else {
            return false
        }
        
        return !self.isEmpty
    }
    
    public func join(_ junction: String, string: String?) -> String? {
        guard let self else {
            return string
        }
        
        guard let string, !string.isEmpty else {
            return self
        }
        
        return self + junction + string
    }
    
}
