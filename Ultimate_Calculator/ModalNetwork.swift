//
//  ModalNetwork.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalNetwork: View {
        @Binding var isPresented: Bool
        @Binding var isPresented1: Bool
        @Binding var isPresented2: Bool
        @Binding var currentUnit1: String
        @Binding var currentUnit2: String
        let networkarray =
        ["Bit/Second, bps", "Byte/Second, Bps", "Gigabit/Second, Gbps",
         "Gigabyte/Second, GBps", "Kilobit/Second, Kbps", "Kilobyte/Second, KBps",  "Megabit/Second, Mbps",
         "Megabyte/Second, MBps", "Terabit/Second, Tbps", "Terabyte/Second, TBps"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.networkarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { networkarray in
                        Button(action: {
                            if self.isPresented1 == true {
                                self.isPresented1 = false
                                self.currentUnit1 = networkarray
                            }
                            
                            else if self.isPresented2 == true {
                              self.isPresented2 = false
                              self.currentUnit2 = networkarray
                              }
                        }) {
                            Text(networkarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Network Speed"))
            }
        }
    }

//struct ModalNetwork_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalNetwork()
//    }
//}


