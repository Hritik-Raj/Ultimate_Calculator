//
//  ConvertorButtonRounded.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/13/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ConvertorButtonRounded: View {
     var button: CalculatorButton
     var buttonconvertor: String
    @EnvironmentObject var env: GlobalEnvironment
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        Button(action: {
            self.env.decidetype(self.button, self.buttonconvertor)
        }) {
            Text(button.title)

            .font(.system(size: 40))

                .frame(width: self.buttonWidth(button: button), height: (UIScreen.main.bounds.width - 5 * 12) / 4)
                .foregroundColor(.white)
                .background(self.buttoncolor(viewRouter: viewRouter, button: button))
                .cornerRadius((self.buttonWidth(button: button)) / 4)
        }
    }
    
    
    private func buttoncolor(viewRouter: ViewRouter, button: CalculatorButton) -> Color {
        if viewRouter.currentTheme == "Theme1" {
                        switch button {
                case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .decimal:
                    return Color("Theme1Numbers")
                    case .ac, .plus_minus, .percent:
                        return Color("Theme1UpperCalc")
                    case .divide, .multiply, .minus, .plus, .equals, .DEL:
                        return Color("Theme1Calculations")
                    default:
                        return Color("Theme1Scientific")
            }

        } else if viewRouter.currentTheme == "Theme2" {
            switch button {
                case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .decimal:
                       return Color("Theme2Numbers")
                    case .ac, .plus_minus, .percent:
                        return Color(.red)
                case .divide, .multiply, .minus, .plus, .equals, .DEL:
                        return Color("Theme2Calculations")
                    default:
                        return .purple
            }

        } else if viewRouter.currentTheme == "Theme3" {
            switch button {
                case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .decimal:
                    return Color("Theme3Numbers")
                    case .ac, .plus_minus, .percent:
                        return Color("Theme3UpperCalc")
                    case .divide, .multiply, .minus, .plus, .equals, .DEL:
                        return Color("Theme3Calculations")
                    default:
                        return Color("Theme3Scientific")
            
            }

        } else if viewRouter.currentTheme == "Theme4" {
            switch button {
                case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .decimal:
                    return Color("Theme4Numbers")
                    case .ac, .plus_minus, .percent:
                        return Color("Theme4UpperCalc")
                    case .divide, .multiply, .minus, .plus, .equals, .DEL:
                        return Color("Theme4Calculations")
                    default:
                        return Color("Theme4Scientific")
            }

        } else if viewRouter.currentTheme == "Theme5" {
            switch button {
                case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .decimal:
                    return Color("Theme5Numbers")
                    case .ac, .plus_minus, .percent:
                        return Color("Theme5UpperCalc")
                    case .divide, .multiply, .minus, .plus, .equals, .DEL:
                        return Color("Theme5Calculations")
                    default:
                        return Color("Theme5Scientific")
            }

        } else if viewRouter.currentTheme == "Theme6" {
            switch button {
                case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .decimal:
                    return Color("Theme6Numbers")
                    case .ac, .plus_minus, .percent:
                        return Color("Theme6UpperCalc")
                    case .divide, .multiply, .minus, .plus, .equals, .DEL:
                        return Color("Theme6Calculations")
                    default:
                        return Color("Theme6Scientific")
            }

        }
        else {
            switch button {
                case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .decimal:
                        return Color(.darkGray)
                    case .ac, .plus_minus, .percent:
                        return Color(.lightGray)
                case .divide, .multiply, .minus, .plus, .equals, .DEL:
                        return .orange
                    default:
                        return .gray
            }
        }
    }
    private func buttonWidth(button: CalculatorButton) -> CGFloat {

        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
}

//struct ConvertorButtonRounded_Previews: PreviewProvider {
//    static var previews: some View {
//        ConvertorButtonRounded()
//    }
//}
