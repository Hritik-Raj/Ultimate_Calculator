//
//  ModalData.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalData: View {
     @Binding var isPresented: Bool
        let dataarray =
        ["Bit, Bit", "Byte, b", "Gibibyte, GiB", "Gigabyte, GB", "Kibibyte, KiB",
         "Kilobyte, kB", "Mebibyte, MiB", "Megabyte, MB", "Pebibyte, PiB", "Petabyte, PB", "Tebibyte, TiB"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.dataarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { dataarray in
                        Button(action: {self.isPresented = false}) {
                            Text(dataarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Data"))
            }
        }
    }

//struct ModalData_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalData()
//    }
//}
