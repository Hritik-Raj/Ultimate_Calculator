//
//  ContentViewTheme.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/5/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ContentViewTheme: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        
        ZStack { Color.black
        .edgesIgnoringSafeArea(.all)
            VStack (spacing: 12){
                VStack {
                    HStack {
                        Button(action: {
                            self.viewRouter.currentTheme = "Theme1"
                        }) {
                            Text("Theme 1")
                        }.buttonStyle(ButtonDesignTheme())
                        
                        Button(action: {
                            self.viewRouter.currentTheme = "Theme2"
                        }) {
                            Text("Theme 2")
                        }.buttonStyle(ButtonDesignTheme())
                    }
                }
//                Spacer()
                
                VStack {
                    HStack {
                        Button(action: {
                            self.viewRouter.currentTheme = "Theme3"
                        }) {
                            Text("Theme 3")
                        }.buttonStyle(ButtonDesignTheme())
                        
                        Button(action: {
                            self.viewRouter.currentTheme = "Theme4"
                        }) {
                            Text("Theme 4")
                        }.buttonStyle(ButtonDesignTheme())
                    }
                }
//                Spacer()
                
                VStack {
                    HStack {
                        Button(action: {
                            self.viewRouter.currentTheme = "Theme5"
                        }) {
                            Text("Theme 5")
                        }.buttonStyle(ButtonDesignTheme())
                        
                        Button(action: {
                            self.viewRouter.currentTheme = "Theme6"
                        }) {
                            Text("Theme 6")
                        }.buttonStyle(ButtonDesignTheme())
                    }
                }
                
                Spacer()

                
                
                    HStack {
                                  Text("Theme").font(.system(size: 14))
                                  
                                  Button(action: {self.viewRouter.currentPage = "page_settings"}) {
                                  Text("Settings")
                                  }
                                  .font(.system(size: 18))
                                  .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                                  .foregroundColor(.white)
                                  .background(Color.gray)
                                  .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)
                                  
                                  Button(action: {self.viewRouter.currentPage = "page_convertor"}) {
                                  Text("Convertor")
                                  }
                                  .font(.system(size: 18))
                                  .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                                  .foregroundColor(.white)
                                  .background(Color.gray)
                                  .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)
                                  
                                  Button(action: {self.viewRouter.currentPage = "page_basic"}) {
                                  Text("Basic")
                                  }
                                  .font(.system(size: 18))
                                  .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                                  .foregroundColor(.white)
                                  .background(Color.gray)
                                  .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)
                              }.foregroundColor(.white)

            }.padding(.all)
          
        }
//        Text("Themes").font(.system(size: 50))
    }
}

struct ButtonDesignTheme: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 30))
            .frame(width: (UIScreen.main.bounds.width - 3 * 12)/2, height: ((UIScreen.main.bounds.width - 3 * 12)/2))
            .background(Color.gray)
            .cornerRadius((UIScreen.main.bounds.width - 3 * 12)/8)
            .foregroundColor(Color.white)
            
    }
}

struct ContentViewTheme_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewTheme().environmentObject(ViewRouter())
    }
}
