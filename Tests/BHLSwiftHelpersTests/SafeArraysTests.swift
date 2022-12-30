//
//  SafeArraysTests.swift
//  
//
//  Created by Eric DeLabar on 12/30/22.
//

import XCTest
import BHLSwiftHelpers

final class SafeArraysTests: XCTestCase {

    func testGetOrDefaultValue_Empty() throws {
        
        let cut = [String]()
        
        XCTAssertNil(cut.getOrDefaultValue(index: 2))
        XCTAssertNil(cut.getOrDefaultValue(index: 2, defaultValue: nil))
        XCTAssertEqual(cut.getOrDefaultValue(index: 2, defaultValue: "Hello"), "Hello")
        
    }
    
    func testGetOrDefaultValue_Exists() throws {
        
        let cut = ["Hello World"]
        
        XCTAssertEqual(cut.getOrDefaultValue(index: 0), "Hello World")
        
    }
    
    func testSetOrAppend_Set() throws {
        
        var cut = ["Zero"]
        
        cut.setOrAppend(index: 0, value: "0", fillWith: "")
        
        XCTAssertEqual(cut, ["0"])
        
    }
    
    func testSetOrAppend_Append() throws {
        
        var cut = ["Zero"]
        
        cut.setOrAppend(index: 1, value: "One", fillWith: "")
        
        XCTAssertEqual(cut, ["Zero", "One"])
        
    }
    
    func testSetOrAppend_AppendMoreThanOne() throws {
        
        var cut = ["Zero"]
        
        cut.setOrAppend(index: 3, value: "Three", fillWith: "X")
        
        XCTAssertEqual(cut, ["Zero", "X", "X", "Three"])
        
    }
    
    func testSetOrAppend_AppendCGFloat() throws {
        
        var cut: [CGFloat] = [0]
        
        cut.setOrAppend(index: 3, value: 3)
        
        XCTAssertEqual(cut, [0, 0, 0, 3])
        
    }

}
