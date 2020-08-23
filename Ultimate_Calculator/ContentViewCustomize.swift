//
//  ContentViewCustomize.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/5/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ContentViewCustomize: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack (alignment: .bottom) { Color.black
        .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Text ("Button Shape")
                    
                    HStack(spacing: 12) {
//                        Text("lol")
                        

                        
                        Button(action: {self.viewRouter.currentButtonDesign = "Circle"}) {
                                          Text("Circle")
                        }.font(.system(size: 18))
                        .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)
                        
                        Button(action: {self.viewRouter.currentButtonDesign = "Rounded"}) {
                                          Text("Rounded")
                        }.font(.system(size: 18))
                        .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)
                        
                        Button(action: {self.viewRouter.currentButtonDesign = "Square"}) {
                                          Text("Square")
                        }.font(.system(size: 18))
                        .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)
                        


                        
                    }
                }
                
                Spacer()

                HStack {
                              Text("Customize").font(.system(size: 14))
                              
                    
                              Button(action: {self.viewRouter.currentPage = "Currency Convert"}) {
                              Text("Currency Convert")
                              }.font(.system(size: 18))
                              .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                              .foregroundColor(.white)
                              .background(Color.gray)
                              .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)
                    
                              Button(action: {self.viewRouter.currentPage = "page_settings"}) {
                              Text("Settings")
                              }.font(.system(size: 18))
                              .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                              .foregroundColor(.white)
                              .background(Color.gray)
                              .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)
                              
                              Button(action: {self.viewRouter.currentPage = "page_convertor"}) {
                              Text("Convertor")
                              }.font(.system(size: 18))
                              .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                              .foregroundColor(.white)
                              .background(Color.gray)
                              .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)
                              
                              Button(action: {self.viewRouter.currentPage = "page_basic"}) {
                              Text("Basic")
                              }.font(.system(size: 18))
                              .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                              .foregroundColor(.white)
                              .background(Color.gray)
                              .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)
                          }.foregroundColor(.white)
            }.padding(.bottom)
          
        }
//        Text("Customize").font(.system(size: 50))
    }
}


struct ContentViewCustomize_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewCustomize().environmentObject(ViewRouter())
    }
}
