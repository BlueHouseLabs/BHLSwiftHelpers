//
//  Array+AppendingTests.swift
//  
//
//  Created by Eric DeLabar on 2/10/23.
//

import XCTest
import BHLSwiftHelpers

final class Array_AppendingTests: XCTestCase {

    func testAppending() throws {
        
        let cut = [1, 2, 3]
        let result = cut.appending(contentsOf: [4])
        
        XCTAssertEqual(result, [1, 2, 3, 4])
        
        let result2 = result.appending(contentsOf: [5, 6])
        
        XCTAssertEqual(result2, [1, 2, 3, 4, 5, 6])
        
        let result3 = result2.appending(contentsOf: [])
        
        XCTAssertEqual(result3, [1, 2, 3, 4, 5, 6])
        
    }

}
