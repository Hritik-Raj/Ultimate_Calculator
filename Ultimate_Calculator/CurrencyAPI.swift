//
//  CurrencyAPI.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/17/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct CurrencyAPI: View {
//    @ObservedObject var vm = ConvertorViewModel()
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(vm.validatedOutput(), id: \.self) { key in
//                    HStack {
//                        Text(self.vm.emojiFlag(key))
//                            .font(.system(size: 70))
//                        Spacer()
//                        Text(self.vm.parsedOutput(for: key))
//                            .font(.system(size: 28))
//                            .bold()
//                            .shadow(color: .secondary, radius: 3)
//                    }
//                    .padding(7)
//                    .background(Color.gray.opacity(0.25))
//                    .cornerRadius(10)
//                    .onTapGesture {
//                        withAnimation {
//                            self.vm.countryCode = key
//                            self.vm.fetchRates()
//                        }
//                    }
//                }
//            }
//            .navigationBarItems(
//                leading: Text("Updated at:")
//                    .foregroundColor(.accentColor),
//                trailing: Text(vm.main?.date ?? "-:-:-")
//                    .foregroundColor(.accentColor))
//                .navigationBarTitle("Rates: \(vm.parsedOutput(for: vm.countryCode ?? "ILS")) \(vm.emojiFlag(vm.countryCode ?? "ILS"))")
//        }
//    }
    
           @State var ShowUnit1 = false
           @State var ShowUnit2 = false
           @State var DisplayUnit1 = "USD"
           @State var DisplayUnit2 = "CAD"
//           @State var Valuecurrency1 = 0
           @EnvironmentObject var viewRouter: ViewRouter
           @EnvironmentObject var env: GlobalEnvironment
           @ObservedObject var vm = ConvertorViewModel()
            
        
           
           let buttons_normal: [[CalculatorButton]] = [
               [.ac, .plus_minus, .percent, .DEL],
               [.seven, .eight, .nine, .divide],
               [.four, .five, .six, .multiply],
               [.one, .two, .three, .minus],
               [.zero, .decimal, .equals, .plus]
           ]
           var body: some View {
               ZStack (alignment: .bottom){ Color.black
                   .edgesIgnoringSafeArea(.all)
                   
                   VStack (spacing: 6){
                       
       Text(viewRouter.currentPage)
       .font(.system(size: 40))
       .foregroundColor(.white)
       .padding(.all)
                                   Button(action: {
                                       self.ShowUnit1.toggle()
                                   }) {
                                    Text(self.vm.emojiFlag(self.DisplayUnit1)  + self.DisplayUnit1 + "  "  + env.displayconvertcurrency)
                                       }
                                   .sheet(isPresented: $ShowUnit1) {
                                       CurrencyAPIModal(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                   }
                                       .font(.system(size: 40))
                                       .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                       .foregroundColor(.white)
                                       .background(Color.gray)
                                       .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                           
                                   Button(action: {
                                       self.ShowUnit2.toggle()
                                   }) {
                                    Text(self.vm.emojiFlag(self.DisplayUnit2)  + self.DisplayUnit2 + "  " + convertcalculations(env.displayconvertcurrency, self.DisplayUnit1, self.DisplayUnit2))
                                       }
                                       .sheet(isPresented: $ShowUnit2) {
                                           CurrencyAPIModal(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                   }
                                       .font(.system(size: 40))
                                       .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                       .foregroundColor(.white)
                                       .background(Color.gray)
                                       .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                       Spacer()
                       
                       
                      ForEach(buttons_normal, id: \.self) {
                           row in HStack (spacing: 12) {
                               if self.viewRouter.currentButtonDesign == "Rounded" {
                                   ForEach(row, id: \.self) { button in
                                       ConvertorButtonRounded(button: button, buttonconvertor: self.viewRouter.currentPage)
                                   }
                               } else if self.viewRouter.currentButtonDesign == "Square" {
                                   ForEach(row, id: \.self) { button in
                                       ConvertorButtonSquare(button: button, buttonconvertor: self.viewRouter.currentPage)
                                   }
                               } else {
                                   ForEach(row, id: \.self) { button in
                                       ConvertorButtonCircle(button: button, buttonconvertor: self.viewRouter.currentPage)
                                        
                                   }
                               }

                           }
                       }
                       
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

                                   Button(action: {
                                       self.viewRouter.currentPage = "page_convertor"
                                       
                                   }) {
                                   Text("Convertor")
                                   }.font(.system(size: 18))
                                   .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                                   .foregroundColor(.white)
                                   .background(Color.gray)
                                   .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)

                                   Button(action: {
                                       self.viewRouter.currentPage = "page_basic"
                                       print ("lololol")
                                       print(self.viewRouter.currentPage)
                                   }) {
                                   Text("Basic")
                                   }.font(.system(size: 18))
                                   .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                                   .foregroundColor(.white)
                                   .background(Color.gray)
                                   .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)

                        }.foregroundColor(.white)
                   }
               }
           }
    
    func convertcalculations(_ currentcurrencyval1: String, _ Unit1: String, _ Unit2: String) -> String {
        
//        print("lol ", vm.parsedOutput(for: Unit2))
//        return (vm.parsedOutput(for: Unit2))
//
        
//        var result = 0.0
//             let expression = AnyExpression(Unit1 * vm.parsedOutput(for: Unit2))
//             do {
//                 result = try expression.evaluate()
//             }
//             catch {
//                  (error)
//             }
//             return formatNumber(value: String(result))
        
//                guard let u1 = Double(Unit1) else { return "0.0" }
//                guard var u2 = Double(Unit2) else { return "0.0" }
//                var u2 = vm.parsedOutput(for: Unit2)
//                print ("u2 part1 ", vm.parsedOutputvalue(for: Unit2))
//                print ("U2 part2 ", u2)
//                let result = u1 * u2!
//                return "0"
//                return String(result)
        
        var u1 = currentcurrencyval1
        var u2 = vm.parsedOutputvalue(for: Unit2)
        let var1 = Double(u1) ?? 0.0
        let var2 = Double(u2) ?? 0.0
        
        var result = var1 * var2
        return String(result)
        
        
        
    }
 }

struct CurrencyAPI_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyAPI()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}
