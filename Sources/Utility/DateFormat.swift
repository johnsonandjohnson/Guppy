//
//  DateFormat.swift
//
//  Copyright © 2019 Johnson & Johnson
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation

struct DateFormat {
    
    static let shared = DateFormat()
    let formatter = DateFormatter()
    
    private init() {
        setStyle(time: .medium, date: .none)
    }
    
    static func format(_ date: Date, with template: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = template
        return formatter.string(from: date)
    }
    
    func setStyle(time: DateFormatter.Style, date: DateFormatter.Style) {
        formatter.timeStyle = time
        formatter.dateStyle = date
    }
    
    func setFormatString(_ formatString: String) {
        formatter.dateFormat = formatString
    }
}
