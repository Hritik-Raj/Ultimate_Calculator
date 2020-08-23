//
//  CurrencyAPI.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/17/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct CurrencyAPI: View {
    @ObservedObject var vm = ConvertorViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.validatedOutput(), id: \.self) { key in
                    HStack {
                        Text(self.vm.emojiFlag(key))
                            .font(.system(size: 70))
                        Spacer()
                        Text(self.vm.parsedOutput(for: key))
                            .font(.system(size: 28))
                            .bold()
                            .shadow(color: .secondary, radius: 3)
                    }
                    .padding(7)
                    .background(Color.gray.opacity(0.25))
                    .cornerRadius(10)
                    .onTapGesture {
                        withAnimation {
                            self.vm.countryCode = key
                            self.vm.fetchRates()
                        }
                    }
                }
            }
            .navigationBarItems(
                leading: Text("Updated at:")
                    .foregroundColor(.accentColor),
                trailing: Text(vm.main?.date ?? "-:-:-")
                    .foregroundColor(.accentColor))
                .navigationBarTitle("Rates: \(vm.parsedOutput(for: vm.countryCode ?? "ILS")) \(vm.emojiFlag(vm.countryCode ?? "ILS"))")
        }
    }
}

struct CurrencyAPI_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyAPI()
    }
}
