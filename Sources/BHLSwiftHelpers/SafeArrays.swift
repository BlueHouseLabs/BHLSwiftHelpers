//
//  SafeArrays.swift
//  
//
//  Created by Eric DeLabar on 12/30/22.
//

import Foundation

public extension Array {
    func getOrDefaultValue(index: Index, defaultValue: Element? = nil) -> Element? {
        count > index ? self[index] : defaultValue
    }
    
    mutating func setOrAppend(index: Index, value: Element, fillWith: Element) {
        let missing = (index + 1) - count
        if missing > 0 {
            for _ in 0..<missing {
                append(fillWith)
            }
        }
        self[index] = value
    }
}

public extension [CGFloat] {
    mutating func setOrAppend(index: Index, value: CGFloat) {
        setOrAppend(index: index, value: value, fillWith: 0)
    }
}
