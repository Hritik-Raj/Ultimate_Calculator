//
//  ConvertorViewModel.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/20/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//


import SwiftUI
import Foundation
import Combine

final class ConvertorViewModel: ObservableObject {
    
    @Published var main: ModelConvertor? = nil
    @Published var countryCode: String? = nil
    
    private var cancellableSet: Set<AnyCancellable> = []
    
    init() { fetchRates()}
    
    func fetchRates() {
        MainService.shared.fetchMain(for: countryCode)
            .replaceError(with: ModelConvertor.placeholder)
            .sink(receiveValue: { [weak self] in self?.main = $0 })
            .store(in: &cancellableSet)
    }
    
    deinit {
        cancellableSet.forEach { $0.cancel()}
    }
}

//struct ConvertorViewModel_Previews: PreviewProvider {
//    static var previews: some View {
//        ConvertorViewModel()
//    }
//}
//

//
//final class ViewModel: ObservableObject {
//
//}

extension ConvertorViewModel {
    
    func emojiFlag(_ countryCode: String) -> String {
        var string = ""
        countryCode
            .dropLast()
            .localizedUppercase
            .unicodeScalars
            .forEach {
                string
                    .append(UnicodeScalar(127397 + $0.value)!.description)
        }
        return string
    }
    
    func parsedOutput(for key: String) -> String {
        guard let mainRates = main?.rates else { return "" }
        let rate = mainRates.filter { $0.key == key }
        var formatter: NumberFormatter {
            let fm = NumberFormatter()
            fm.numberStyle = .currency
            fm.locale = Locale(identifier: key.dropLast() + "_" + key.dropLast().uppercased())
            return fm
        }
        return
            formatter.string(from: NSNumber(value: rate[key] ?? 1.0))!
    }
    
    func parsedOutputvalue(for key: String) -> String {
        guard let mainRates = main?.rates else { return "" }
        let rate = mainRates.filter { $0.key == key }
//        var formatter: NumberFormatter {
//            let fm = NumberFormatter()
             // fm.numberStyle = .currency
             // fm.locale = Locale(identifier: key.dropLast() + "_" + key.dropLast().uppercased())
//             return fm
//        }
        return String(rate[key] ?? 1.0)
//            formatter.string(from: NSNumber(value: rate[key] ?? 1.0))!
    }
    
    func validatedOutput() -> [Dictionary<String, Double>.Keys.Element] {
        guard let tmp = main?.rates?.filter({ $0.key != countryCode ?? "USD" }).keys.sorted() else { return []}
        return tmp
    }
}
