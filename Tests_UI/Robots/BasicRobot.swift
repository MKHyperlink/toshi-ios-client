// Copyright (c) 2017 Token Browser, Inc
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

import Foundation
import XCTest

// MARK: - Robot UI testing pattern.
// For a detailed look at what can be done with this in multiple languages:
// - Kotlin (original): https://academy.realm.io/posts/kau-jake-wharton-testing-robots/
// - Swift: https://www.youtube.com/watch?v=flZDWc25paw

protocol BasicRobot {
    
    // MARK: - Is it there?
    
    /// Runs an action where the implementation's test framework validates that a view is presently visible.
    ///
    /// - Parameters:
    ///   - accessibilityLabel: The Accessibility Label of the view to look for. This would be read out loud to VoiceOver users.
    ///   - file: The file from which this method is being called.
    ///   - line: The line from which this method is being called.
    func confirmViewVisibleWith(accessibilityLabel: String,
                                file: StaticString,
                                line: UInt)
    
    /// Runs an action where the implementation's test framework validates that a view is not presently visible.
    ///
    /// - Parameters:
    ///   - accessibilityLabel: The Accessibility Label of the view to look for. This would be read out loud to VoiceOver users.
    ///   - file: The file from which this method is being called.
    ///   - line: The line from which this method is being called.
    func confirmViewGoneWith(accessibilityLabel: String,
                             file: StaticString,
                             line: UInt)
    
    // MARK: - Tapping
    
    /// Runs an action where the implementation's test framework taps on a view.
    ///
    /// - Parameters:
    ///   - accessibilityLabel: The Accessibility Label of the view to tap. This would be read out loud to VoiceOver users.
    ///   - file: The file from which this method is being called.
    ///   - line: The line from which this method is being called.
    func tapViewWith(accessibilityLabel: String,
                     file: StaticString,
                     line: UInt)
}