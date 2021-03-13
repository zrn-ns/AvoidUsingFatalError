//
//  StringExtensionSpec.swift
//  AvoidUsingFatalErrorTests
//
//  Created by zrn_ns on 2021/03/13.
//

import Nimble
import Quick

@testable import AvoidUsingFatalError

class StringExtensionSpec: QuickSpec {
    override func spec() {
        describe("repeated(times:)のテスト") {
            describe("正常パターン") {
                it("繰り返し回数が0回の場合、空文字列が返ること") {
                    let times: RepeatTimes = try! .init(0)
                    expect("abc".repeated(times: times)) == ""
                }
                it("繰り返し回数が1回以上の場合、指定回数繰り返された文字列が返ること") {
                    let times: RepeatTimes = try! .init(3)
                    expect("abc".repeated(times: times)) == "abcabcabc"
                }
            }
        }
    }
}


class RepeatTimesSpec: QuickSpec {
    override func spec() {
        describe("init(_:)のテスト") {
            it("繰り返し回数が0回以上の場合、初期化に成功すること") {
                let times0: RepeatTimes = try .init(0)
                expect(times0.raw) == 0

                let times1: RepeatTimes = try .init(1)
                expect(times1.raw) == 1

                let times3: RepeatTimes = try .init(3)
                expect(times3.raw) == 3
            }
            it("繰り返し回数が負の数の場合、エラーが発生すること") {
                expect {
                    let _: RepeatTimes = try .init(-1)
                }.to(throwError(RepeatTimes.Errors.indexOutOfBounds))
            }
        }
        describe("rangeのテスト") {
            it("0から指定された値までの（指定された値を含む）範囲が返ること") {
                let times0: RepeatTimes = try .init(0)
                expect(times0.range.lowerBound) == 0
                expect(times0.range.upperBound) == 0

                let times3: RepeatTimes = try .init(3)
                expect(times3.range.lowerBound) == 0
                expect(times3.range.upperBound) == 3
            }
        }
    }
}
