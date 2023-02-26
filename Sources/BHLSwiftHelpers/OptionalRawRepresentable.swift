//
//  OptionalRawRepresentable.swift
//  
//
//  Created by Eric DeLabar on 2/10/23.
//

import Foundation

public protocol OptionalRawRepresentable {
    associatedtype RawValue
    init?(optionalRawValue: RawValue?)
}

public extension OptionalRawRepresentable where Self: RawRepresentable {
    init?(optionalRawValue: RawValue?) {
        guard let rawValue = optionalRawValue else {
            return nil
        }
        self.init(rawValue: rawValue)
    }
}
