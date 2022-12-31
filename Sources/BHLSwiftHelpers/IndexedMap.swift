//
//  IndexedMap.swift
//  
//
//  Created by Eric DeLabar on 12/31/22.
//

import Foundation

public extension RandomAccessCollection where Index == Int {
    
    func indexedMap<T>(_ transform: (Self.Element, Self.Index) throws -> T) rethrows -> [T] {
        var result = [T]()
        for i in 0..<count {
            let current = self[i]
            result.append(try transform(current, i))
        }
        return result
    }
    
}
