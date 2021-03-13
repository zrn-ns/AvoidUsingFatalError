//
//  String+Extensions.swift
//  AvoidUsingFatalError
//
//  Created by zrn_ns on 2021/03/13.
//

import Foundation

extension String {

    func repeated(times: RepeatTimes) -> String {
        var text = ""
        times.range.forEach { _ in text += self }
        return text
    }
}

struct RepeatTimes {
    enum Errors: Error {
        case indexOutOfBounds
    }

    init(_ intValue: Int) throws {
        guard intValue >= 0 else { throw Errors.indexOutOfBounds }

        raw = intValue
    }

    static let zero = try! Self.init(0)

    let raw: Int
    var range: Range<Int> { 0 ..< raw }
}
