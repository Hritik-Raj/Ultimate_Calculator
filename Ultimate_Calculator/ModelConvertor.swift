//
//  ModelConvertor.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/19/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI
import Foundation
struct ModelConvertor {

        let id = UUID()
        let date: String?
        let rates: [String: Double]?

}
    extension ModelConvertor: Codable, Identifiable, Equatable {
        static var placeholder: ModelConvertor { Self(date: nil, rates: nil)}
    }

    enum Endpoint {
        case base(_: String)
        case `default`
        private var baseURL: URL { URL(string: "https://api.exchangeratesapi.io/latest")!}
        var url: URL? { baseURL.setQueries(query())}
        func query() -> [String: String] {
            switch self {
                case let .base(base):
                    return ["base": base]
                case .default:
                    return ["base": "ILS"]
            }
        }
    }
