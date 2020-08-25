//
//  ContentViewSettings.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/5/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI


struct ContentViewSettings : View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        
        ZStack  { Color.black
        .edgesIgnoringSafeArea(.all)
            VStack (spacing: 12) {
                    
                        Button(action: {self.viewRouter.currentPage = "page_theme"}) {
                           Text("Themes")
                           }.font(.system(size: 40))
                           .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                           .foregroundColor(.white)
                           .background(Color.gray)
                           .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                           
                           Button(action: {self.viewRouter.currentPage = "page_customize"}) {
                           Text("Customize")
                           }.font(.system(size: 40))
                           .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                           .foregroundColor(.white)
                           .background(Color.gray)
                           .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                
                Spacer()
                
                    
   
                
                
                
                // add navigation views here
                
                HStack (alignment: .bottom) {
                            Text("Settings").font(.system(size: 14))
                        
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
            }.padding(.all)
 
            
//                 ForEach(buttons_menu, id: \.self) {
//                                       element in HStack (spacing: 20) {
//                                           MenuButtonView(button: element)
//                                    }
//                                   }
        }
    }
}

#if DEBUG
struct ContentViewSettings_Previews : PreviewProvider {
    static var previews: some View {
        ContentViewSettings().environmentObject(ViewRouter())
    }
}
#endif

//struct ContentViewSettings_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentViewSettings()
//    }
//}
