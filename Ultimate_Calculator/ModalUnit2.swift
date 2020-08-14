//
//  ModalUnit2.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalUnit2: View {
    var body: some View {

        ZStack {
            VStack {
                HStack {
                    ScrollView(.vertical) {
                        VStack(spacing: 10) {
                            ForEach(0..<100) {
                                Text("Item \($0)")
                                    .font(.title)
                            }
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
            }
        }


    }
}

//struct ModalUnit2_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalUnit2()
//    }
//}
