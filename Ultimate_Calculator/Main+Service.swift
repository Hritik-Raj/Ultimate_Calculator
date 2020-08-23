//
//  Main+Service.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/19/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import Foundation
import Combine

final class MainService {
    static let shared = MainService()
    
    func fetchMain(for countryCode: String?) -> AnyPublisher<ModelConvertor, Error> {
        guard let code = countryCode else {
            return
                urlSession(ModelConvertor.self, with: Endpoint.default.url!)
        }
        return
            urlSession(ModelConvertor.self, with: Endpoint.base(code).url!)
    }
    
}

extension MainService {
    private func urlSession<T: Codable>(_ type: T.Type, with url: URL) -> AnyPublisher<T, Error> {
        URLSession
            .shared
            .dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: type.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
