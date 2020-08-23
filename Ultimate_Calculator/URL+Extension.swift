//
//  URL+Extension.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/19/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI
import Foundation

extension URL {
    func setQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map { URLQueryItem(name: $0.key, value: $0.value)}
        return components?.url
    }
}
