//
//  IndexedMapTests.swift
//  
//
//  Created by Eric DeLabar on 12/31/22.
//

import XCTest
import BHLSwiftHelpers

final class IndexedMapTests: XCTestCase {

    func testIndexedMap() throws {
        
        let ones = [1,2,3,4,5]
        
        let result = ones.indexedMap { value, index in
            return "\(value * index)"
        }
        
        XCTAssertEqual(result, ["0", "2", "6", "12", "20"])
        
    }
    
    func testIndexedMap_Empty() throws {
        
        let strings = [String]()
        
        let result = strings.indexedMap { _, _ in
            XCTFail("Transform function shouldn't be called.")
            return 0
        }
        
        XCTAssertTrue(result.isEmpty)
    }

}
