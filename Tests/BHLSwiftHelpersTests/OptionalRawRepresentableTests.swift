//
//  OptionalRawRepresentableTests.swift
//  
//
//  Created by Eric DeLabar on 2/10/23.
//

import XCTest
import BHLSwiftHelpers

final class OptionalRawRepresentableTests: XCTestCase {

    private enum TestEnum: String, OptionalRawRepresentable, Equatable {
        case hello
        case world
    }
    
    func testInit() throws {
        
        XCTAssertEqual(TestEnum(optionalRawValue: "hello"), .hello)
        XCTAssertEqual(TestEnum(optionalRawValue: "world"), .world)
        XCTAssertNil(TestEnum(optionalRawValue: "fizz"))
        XCTAssertNil(TestEnum(optionalRawValue: nil))
        
    }

}
