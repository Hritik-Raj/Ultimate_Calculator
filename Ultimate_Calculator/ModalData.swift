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
     @Binding var isPresented1: Bool
     @Binding var isPresented2: Bool
     @Binding var currentUnit1: String
     @Binding var currentUnit2: String
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
                        Button(action: {
                            if self.isPresented1 == true {
                                self.isPresented1 = false
                                self.currentUnit1 = dataarray
                            }
                            
                            else if self.isPresented2 == true {
                              self.isPresented2 = false
                              self.currentUnit2 = dataarray
                              }
                        }) {
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
