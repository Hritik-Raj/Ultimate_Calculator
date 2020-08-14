//
//  ContentViewBasic.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/5/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI


struct ContentViewBasic : View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var env: GlobalEnvironment
    @Environment(\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    let buttons_normal: [[CalculatorButton]] = [
        [.ac, .plus_minus, .percent, .DEL],
        [.seven, .eight, .nine, .divide],
        [.four, .five, .six, .multiply],
        [.one, .two, .three, .minus],
        [.zero, .decimal, .equals, .plus]
    ]
    
    let buttons_scientific_1: [[CalculatorButton]] = [
        [.leftbracket, .rightbracket, .mc, .m_plus, .m_minus, .m_r, .ac, .plus_minus, .percent, .DEL],
        [.second, .x_square, .x_cube, .x_raised_y, .e_raised_x, .ten_raised_x, .seven, .eight, .nine, .divide],
        [.one_by_x, .square_root, .cube_root, .y_root_x, .natural_log, .log_base_ten, .four, .five, .six, .multiply],
        [.factorial, .sin_, .cos_, .tan_, .exp_, .EE, .one, .two, .three, .minus],
        [.RAD, .sinh_, .cosh_, .tanh_, .pi_, .Rand_, .zero, .decimal, .equals, .plus]
    ]
    
    let buttons_scientific_2: [[CalculatorButton]] = [
        [.leftbracket, .rightbracket, .mc, .m_plus, .m_minus, .m_r, .ac, .plus_minus, .percent, .DEL],
        [.second, .x_square, .x_cube, .x_raised_y, .y_raised_x, .two_raised_x, .seven, .eight, .nine, .divide],
        [.one_by_x, .square_root, .cube_root, .y_root_x, .log_base_y, .log_base_two, .four, .five, .six, .multiply],
        [.factorial, .sin_inverse, .cos_inverse, .tan_inverse, .exp_, .EE, .one, .two, .three, .minus],
        [.RAD, .sinh_, .cosh_inverse, .tanh_inverse, .pi_, .Rand_, .zero, .decimal, .equals, .plus]
    ]
    
    let buttons_menu: [MenuButton] = [.basic, .scientific, .convertor, .settings]
    var body: some View {
        
        
        VStack {
            Group {
                if verticalSizeClass == .regular && horizontalSizeClass == .compact {
                    ZStack (alignment: .bottom) { Color.black
                        .edgesIgnoringSafeArea(.all)
                        VStack(spacing: 12) {
                            
                            HStack {
                                Spacer()
                                Text(env.display)
                                    .foregroundColor(.white)
                                    .font(.system(size: CGFloat(env.fontsize)))
                            }.padding()
                            
                            ForEach(buttons_normal, id: \.self) {
                                row in HStack (spacing: 12) {
                                    if self.viewRouter.currentButtonDesign == "Rounded" {
                                        ForEach(row, id: \.self) { button in
                                            CalculatorButtonViewRounded(button: button)
                                        }
                                    } else if self.viewRouter.currentButtonDesign == "Square" {
                                        ForEach(row, id: \.self) { button in
                                            CalculatorButtonViewSquare(button: button)
                                        }
                                    } else {
                                        ForEach(row, id: \.self) { button in
                                            CalculatorButtonView(button: button)
                                        }
                                    }

                                }
                            }
                            
//                            ForEach(buttons_menu, id: \.self) {
//                                element in HStack (spacing: 20) {
//                                    MenuButtonView(button: element)
//                                }
//                            }
                            
                            HStack {
                                Text("Basic").font(.system(size: 14))

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
                } else if (verticalSizeClass == .compact && horizontalSizeClass == .compact) || (verticalSizeClass == .compact && horizontalSizeClass == .regular) {
                    ZStack (alignment: .bottom) { Color.black
                        .edgesIgnoringSafeArea(.all)
                        VStack(spacing: 12) {
                            HStack {
                                Spacer()
                                Text(env.display)
                                    .foregroundColor(.white)
                                    .font(.system(size: CGFloat(env.fontsize)))
                            }.padding()
                            
                            ForEach(buttons_scientific_1, id: \.self) {
                                row in HStack (spacing: 6) {
                                    
                                    if self.viewRouter.currentButtonDesign == "Rounded" {
                                         ForEach(row, id: \.self) { button in
                                             CalculatorButtonScientificRounded(button: button)
                                         }
                                     } else if self.viewRouter.currentButtonDesign == "Square" {
                                         ForEach(row, id: \.self) { button in
                                             CalculatorButtonScientificSquare(button: button)
                                         }
                                     } else {
                                         ForEach(row, id: \.self) { button in
                                             CalculatorButtonViewScientific(button: button)
                                         }
                                     }

                                }
                            }
                        }.padding(.bottom)
                    }
                }
            }
        }

    }
}

#if DEBUG
struct ContentViewBasic_Previews : PreviewProvider {
    static var previews: some View {
        ContentViewSettings().environmentObject(ViewRouter())
    }
}
#endif
