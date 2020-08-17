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
        let networkarray =
        ["Bit/Second, bps", "Byte/Second, Bps", "Gigabit/Second, Gbps",
         "Gigabyte/Second, GBps", "Kilobit/Second, KBps", "Megabit/Second, Mbps",
         "Megabyte/Second, MBps", "Terabit/Second, Tbps", "Terabyte/Second, TBps"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.networkarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { networkarray in
                        Button(action: {self.isPresented = false}) {
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
