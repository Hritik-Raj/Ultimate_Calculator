//
//  Time.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct Time: View {
        @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
    
    var timedict : [String : String] = ["Hours, hrDays, d": "0.042 d", "Minutes, minMicroseconds, μs": "60,000,000 μs", "Weeks, wkMillennia, mil": "0 mil", "Centuries, cYears, yr": "0 yr", "Seconds, secMillennia, mil": "0 mil", "Nanoseconds, nsMicroseconds, μs": "0.001 μs", "Centuries, cMicroseconds, μs": "1,000,000 μs", "Seconds, secYears, yr": "0 yr", "Nanoseconds, nsMilliseconds, ms": "0 ms", "Hours, hrHours, hr": "1 hr", "Microseconds, μsNanoseconds, ns": "1,000 ns", "Microseconds, μsMillennia, mil": "0 mil", "Millennia, milSeconds, sec": "31,536,000,000 sec", "Milliseconds, msDays, d": "0 d", "Weeks, wkWeeks, wk": "1 wk", "Centuries, cMonths, m": "0 m", "Months, mMonths, m": "1 m", "Milliseconds, msMinutes, min": "0 min", "Centuries, cHours, hr": "0 hr", "Weeks, wkMonths, m": "0.23 m", "Minutes, minYears, yr": "0 yr", "Milliseconds, msSeconds, sec": "0.001 sec", "Months, mCenturies, c": "2,628,000 sec", "Days, dYears, yr": "0.003 yr", "Years, yrMinutes, min": "525,960 min", "Milliseconds, msMillennia, mil": "0 mil", "Nanoseconds, nsWeeks, wk": "0 wk", "Weeks, wkMilliseconds, ms": "604,800,000 ms", "Nanoseconds, nsMinutes, min": "0 min", "Nanoseconds, nsYears, yr": "0 yr", "Hours, hrMilliseconds, ms": "3,600,000 ms", "Microseconds, μsDays, d": "0 d", "Months, mWeeks, wk": "4.345 wk", "Millennia, milDays, d": "365,000 d", "Seconds, secMicroseconds, μs": "1,000,000 μs", "Seconds, secSeconds, sec": "1 sec", "Hours, hrMillennia, mil": "0 mil", "Weeks, wkMinutes, min": "10,080 min", "Weeks, wkNanoseconds, ns": "604,800,000,000,000 ns", "Millennia, milMillennia, mil": "1 mil", "Days, dSeconds, sec": "86,400 sec", "Days, dMonths, m": "0.033 m", "Microseconds, μsYears, yr": "0 yr", "Nanoseconds, nsDays, d": "0 d", "Weeks, wkDays, d": "7 d", "Minutes, minSeconds, sec": "60 sec", "Microseconds, μsHours, hr": "0 hr", "Minutes, minMilliseconds, ms": "60,000 ms", "Seconds, secMonths, m": "0 m", "Weeks, wkHours, hr": "168 hr", "Nanoseconds, nsCenturies, c": "0 sec", "Years, yrSeconds, sec": "31,557,600 sec", "Months, mNanoseconds, ns": "2,628,000,000,000,000 ns", "Minutes, minCenturies, c": "60 sec", "Days, dNanoseconds, ns": "86,400,000,000,000 ns", "Hours, hrMicroseconds, μs": "3,600,000,000 μs", "Centuries, cSeconds, sec": "1 sec", "Nanoseconds, nsMillennia, mil": "0 mil", "Hours, hrMinutes, min": "60 min", "Nanoseconds, nsNanoseconds, ns": "1 ns", "Years, yrDays, d": "365.25 d", "Weeks, wkSeconds, sec": "604,800 sec", "Minutes, minMinutes, min": "1 min", "Years, yrWeeks, wk": "52.179 wk", "Seconds, secMinutes, min": "0.017 min", "Centuries, cNanoseconds, ns": "1,000,000,000 ns", "Days, dWeeks, wk": "0.143 wk", "Milliseconds, msYears, yr": "0 yr", "Milliseconds, msHours, hr": "0 hr", "Millennia, milMilliseconds, ms": "31,536,000,000,000 ms", "Microseconds, μsCenturies, c": "0 sec", "Minutes, minWeeks, wk": "0 wk", "Months, mDays, d": "30.417 d", "Weeks, wkMicroseconds, μs": "604,800,000,000 μs", "Weeks, wkYears, yr": "0.019 yr", "Hours, hrYears, yr": "0 yr", "Days, dHours, hr": "24 hr", "Centuries, cMinutes, min": "0.017 min", "Hours, hrNanoseconds, ns": "3,600,000,000,000 ns", "Centuries, cWeeks, wk": "0 wk", "Years, yrMillennia, mil": "0.001 mil", "Centuries, cMillennia, mil": "0 mil", "Microseconds, μsWeeks, wk": "0 wk", "Nanoseconds, nsMonths, m": "0 m", "Days, dMinutes, min": "1,440 min", "Days, dDays, d": "1 d", "Days, dMilliseconds, ms": "86,400,000 ms", "Milliseconds, msMonths, m": "0 m", "Minutes, minDays, d": "0.001 d", "Seconds, secCenturies, c": "1 sec", "Months, mMillennia, mil": "0 mil", "Milliseconds, msWeeks, wk": "0 wk", "Microseconds, μsMonths, m": "0 m", "Millennia, milMinutes, min": "525,600,000 min", "Minutes, minHours, hr": "0.017 hr", "Microseconds, μsSeconds, sec": "0 sec", "Microseconds, μsMilliseconds, ms": "0.001 ms", "Minutes, minMonths, m": "0 m", "Microseconds, μsMinutes, min": "0 min", "Years, yrNanoseconds, ns": "31,557,600,000,000,000 ns", "Hours, hrWeeks, wk": "0.006 wk", "Hours, hrCenturies, c": "3,600 sec", "Weeks, wkCenturies, c": "604,800 sec", "Millennia, milCenturies, c": "31,536,000,000 sec", "Centuries, cCenturies, c": "1 sec", "Years, yrYears, yr": "1 yr", "Years, yrMicroseconds, μs": "31,557,600,000,000 μs", "Millennia, milYears, yr": "999.316 yr", "Milliseconds, msMicroseconds, μs": "1,000 μs", "Centuries, cMilliseconds, ms": "1,000 ms", "Nanoseconds, nsHours, hr": "0 hr", "Months, mMinutes, min": "43,800 min", "Millennia, milNanoseconds, ns": "31,536,000,000,000,000,000 ns", "Years, yrCenturies, c": "31,557,600 sec", "Months, mYears, yr": "0.083 yr", "Months, mMicroseconds, μs": "2,628,000,000,000 μs", "Days, dMicroseconds, μs": "86,400,000,000 μs", "Milliseconds, msNanoseconds, ns": "1,000,000 ns", "Hours, hrSeconds, sec": "3,600 sec", "Milliseconds, msCenturies, c": "0.001 sec", "Minutes, minMillennia, mil": "0 mil", "Millennia, milMicroseconds, μs": "31,536,000,000,000,000 μs", "Hours, hrMonths, m": "0.001 m", "Months, mMilliseconds, ms": "2,628,000,000 ms", "Millennia, milHours, hr": "8,760,000 hr", "Seconds, secDays, d": "0 d", "Years, yrMonths, m": "12.008 m", "Millennia, milWeeks, wk": "52,142.857 wk", "Seconds, secNanoseconds, ns": "1,000,000,000 ns", "Years, yrMilliseconds, ms": "31,557,600,000 ms", "Days, dMillennia, mil": "0 mil", "Seconds, secMilliseconds, ms": "1,000 ms", "Seconds, secHours, hr": "0 hr", "Millennia, milMonths, m": "12,000 m", "Milliseconds, msMilliseconds, ms": "1 ms", "Minutes, minNanoseconds, ns": "60,000,000,000 ns", "Nanoseconds, nsSeconds, sec": "0 sec", "Centuries, cDays, d": "0 d", "Days, dCenturies, c": "86,400 sec", "Years, yrHours, hr": "8,766 hr", "Seconds, secWeeks, wk": "0 wk", "Months, mSeconds, sec": "2,628,000 sec", "Microseconds, μsMicroseconds, μs": "1 μs", "Months, mHours, hr": "730 hr"]
    
//                var jointdict : [String : UnitDuration] = [:]
//
//                let keys1 = ["Centuries, c", "Days, d", "Hours, hr", "Microseconds, μs", "Millennia, mil", "Milliseconds, ms", "Minutes, min", "Months, m", "Nanoseconds, ns", "Seconds, sec", "Weeks, wk", "Years, yr"]
//
//                    let keys2 = ["Centuries, c", "Days, d", "Hours, hr", "Microseconds, μs", "Millennia, mil", "Milliseconds, ms", "Minutes, min", "Months, m", "Nanoseconds, ns", "Seconds, sec", "Weeks, wk", "Years, yr"]
//
//
//
//                                                   init () {
//
//                                                        for i in 1..<timearray.count {
//                                                            jointdict[timearray[i]] = array2[i]
//                                                        }
//
//
//                                                        let formatter = MeasurementFormatter()
//                                                        formatter.unitOptions = .providedUnit
//                                                        for itema in keys1 {
//                                                            for itemb in keys2 {
//                                                                let itemc = itema + itemb
//                                                                let val1 = Measurement(value: 1.0 , unit: jointdict[itema] ?? UnitDuration.seconds)
//                                                                let val2 = val1.converted(to: jointdict[itemb] ?? UnitDuration.seconds)
//                                                                let storeval =  formatter.string(from: val2)
//                                                                timedict[itemc] = storeval
//                                                            }
//                                                        }
//
//                                                        print ("Final Dict ", timedict)
//                                                    }
            
        
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
                                    Text(self.DisplayUnit1 + "  "  + env.displayconverttime)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalTime(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                                                       Text(self.DisplayUnit2 + "  " + calc(env.displayconverttime, self.DisplayUnit1, self.DisplayUnit2))
//                                    Text(self.DisplayUnit2 + "  ")
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalTime(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                    Spacer()
                    
    //                HStack {
    //                    Spacer()
    //                    Text(env.displayconvert)
    //                        .foregroundColor(.white)
    //                        .font(.system(size: CGFloat(env.fontsizeconvert)))
    //                }.padding()
                    
                    
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
    
    let timearray =
           ["Centuries, c", "Days, d", "Hours, hr", "Microseconds, μs", "Millennia, mil", "Milliseconds, ms", "Minutes, min", "Months, m", "Nanoseconds, ns", "Seconds, sec", "Weeks, wk", "Years, yr"]
    
    let array2 = [UnitDuration.century, UnitDuration.days, UnitDuration.hours, UnitDuration.microsec, UnitDuration.millenia, UnitDuration.milliseconds, UnitDuration.minutes, UnitDuration.months, UnitDuration.nanosec, UnitDuration.seconds, UnitDuration.weeks, UnitDuration.years]
    
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
          let formatter = MeasurementFormatter()
          let stringval: String = unit1  +  unit2
          let storedval = (timedict[stringval, default: "1"])
          let operand1 = (unit1val as NSString).doubleValue
          let operand2 = (storedval as NSString).doubleValue
          return String(operand1 * operand2)
          
      }
}

struct Time_Previews: PreviewProvider {
    static var previews: some View {
        Time()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}

extension UnitDuration {
    static let century = UnitDuration(symbol: "c", converter: UnitConverterLinear(coefficient: 3153600000))
    static let days = UnitDuration(symbol: "d", converter: UnitConverterLinear(coefficient: 86400))
    static let microsec = UnitDuration(symbol: "μs", converter: UnitConverterLinear(coefficient: 0.000001))
    static let millenia = UnitDuration(symbol: "mil", converter: UnitConverterLinear(coefficient: 31536000000))
    static let millisec = UnitDuration(symbol: "ms", converter: UnitConverterLinear(coefficient: 0.001))
    static let months = UnitDuration(symbol: "m", converter: UnitConverterLinear(coefficient: 2628000))
    static let nanosec = UnitDuration(symbol: "ns", converter: UnitConverterLinear(coefficient: 0.000000001))
    static let weeks = UnitDuration(symbol: "wk", converter: UnitConverterLinear(coefficient: 604800))
    static let years = UnitDuration(symbol: "yr", converter: UnitConverterLinear(coefficient: 31557600))
}
