//
//  Array+Appending.swift
//  
//
//  Created by Eric DeLabar on 2/10/23.
//

import Foundation

public extension Array {
    
    func appending(contentsOf newElements: [Element]) -> [Element] {
        var current = self
        current.append(contentsOf: newElements)
        return current
    }
    
}
