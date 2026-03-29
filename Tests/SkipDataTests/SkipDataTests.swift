// Copyright 2023–2026 Skip
// SPDX-License-Identifier: MPL-2.0
import XCTest
import OSLog
import Foundation

let logger: Logger = Logger(subsystem: "SkipData", category: "Tests")

@available(macOS 13, macCatalyst 16, iOS 16, tvOS 16, watchOS 8, *)
final class SkipDataTests: XCTestCase {
    func testSkipData() throws {
        XCTAssertEqual(1 + 2, 3, "basic test")
    }
}
