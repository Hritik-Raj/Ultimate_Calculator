//
//  Energy.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

// make sure this is all correct values on the internet

import SwiftUI

struct Energy: View {
           @State var ShowUnit1 = false
            @State var ShowUnit2 = false
            @State var DisplayUnit1 = "Angle"
            @State var DisplayUnit2 = "Angle"
            @EnvironmentObject var viewRouter: ViewRouter
            @EnvironmentObject var env: GlobalEnvironment
    
    var energydict : [String : String] = ["Foot-Poundal, ft·pdlKilocalories, kCal": "0 kcal", "Kilogram-Meters, kg mJoules, J": "9.807 J", "Megacalories, McalElectronvolt, eV": "26,167,500,000,000,000,000,000,000 eV", "Electronvolt, eVKilogram-Meters, kg m": "0 kg m", "Kilocalories, kCalInches Ounce, in·oz": "589,295.775 in·oz", "Electronvolt, eVKilocalories, kCal": "0 kcal", "Kilowatt, kWKilogram-Meters, kg m": "367,084.735 kg m", "Ergs, ergInches Pound, in·lb": "0 in·lb", "Kilogram-Meters, kg mKilogram-Meters, kg m": "1 kg m", "Btus, btuMegacalories, Mcal": "0 Mcal", "Electronvolt, eVFoot-Poundal, ft·pdl": "0 ft·pdl", "Joules, JFoot-Pounds, ft·lb": "0.737 ft·lb", "Megacalories, McalGigawatt, GW": "0 GW", "Newton-Meters, N mInches Ounce, in·oz": "140.845 in·oz", "Kilojoule, kJElectronvolt, eV": "6,250,000,000,000,001,000,000 eV", "Newton-Meters, N mKilojoule, kJ": "0.001 kJ", "Megacalories, McalKilowatt, kW": "1.163 kW", "Kilocalories, kCalKilowatt, kW": "0.001 kW", "Inches Pound, in·lbNewton-Meters, N m": "0.113 N m", "Megatons, MTGigawatt, GW": "1,162.222 GW", "Gigawatt, GWInches Ounce, in·oz": "507,042,253,521,126.75 in·oz", "Inches Pound, in·lbGigawatt, GW": "0 GW", "q, qBtus, btu": "999,999,905,218,301,200 btu", "Inches Ounce, in·ozKilowatt, kW": "0 kW", "Joules, Jq, q": "0 q", "Electronvolt, eVNewton-Meters, N m": "0 N m", "Watt, WGigawatt, GW": "0 GW", "Megatons, MTFoot-Pounds, ft·lb": "3,085,545,722,713,864 ft·lb", "Joules, JBtus, btu": "0.001 btu", "Inches Pound, in·lbFoot-Pounds, ft·lb": "0.083 ft·lb", "Ergs, ergGigawatt, GW": "0 GW", "Electronvolt, eVCalories, cal": "0 cal", "Watt, WMegatons, MT": "0 MT", "Btus, btuInches Pound, in·lb": "9,336.779 in·lb", "Newton-Meters, N mBtus, btu": "0.001 btu", "Kilojoule, kJMegacalories, Mcal": "0 Mcal", "Kilojoule, kJKilowatt, kW": "0 kW", "Inches Ounce, in·ozJoules, J": "0.007 J", "Watt, WWatt, W": "1 W", "Watt, WKilojoule, kJ": "3.6 kJ", "Calories, calKilowatt, kW": "0 kW", "Calories, calFoot-Pounds, ft·lb": "3.086 ft·lb", "Foot-Pounds, ft·lbq, q": "0 q", "Electronvolt, eVJoules, J": "0 J", "Megacalories, McalKilocalories, kCal": "1,000.669 kcal", "Kilocalories, kCalCalories, cal": "1,000 cal", "q, qCalories, cal": "252,164,412,045,889,100,000 cal", "Newton-Meters, N mKilogram-Meters, kg m": "0.102 kg m", "Foot-Poundal, ft·pdlCalories, cal": "0.01 cal", "Foot-Poundal, ft·pdlNewton-Meters, N m": "0.042 N m", "Foot-Poundal, ft·pdlMegatons, MT": "0 MT", "Ergs, ergWatt, W": "0 W", "Ergs, ergFoot-Pounds, ft·lb": "0 ft·lb", "Kilocalories, kCalWatt, W": "1.162 W", "Inches Ounce, in·ozElectronvolt, eV": "44,375,000,000,000,010 eV", "Kilogram-Meters, kg mFoot-Poundal, ft·pdl": "233.5 ft·pdl", "Horsepower, hpGigawatt, GW": "0 GW", "Joules, JKilojoule, kJ": "0.001 kJ", "Gigawatt, GWFoot-Pounds, ft·lb": "2,654,867,256,637.168 ft·lb", "Calories, calMegatons, MT": "0 MT", "Electronvolt, eVq, q": "0 q", "Watt, WJoules, J": "3,600 J", "Joules, JInches Ounce, in·oz": "140.845 in·oz", "Inches Ounce, in·ozq, q": "0 q", "Newton-Meters, N mGigawatt, GW": "0 GW", "Newton-Meters, N mKilocalories, kCal": "0 kcal", "Kilogram-Meters, kg mInches Pound, in·lb": "86.788 in·lb", "Kilowatt, kWFoot-Poundal, ft·pdl": "85,714,285.714 ft·pdl", "Foot-Pounds, ft·lbCalories, cal": "0.324 cal", "Kilocalories, kCalq, q": "0 q", "Foot-Poundal, ft·pdlFoot-Pounds, ft·lb": "0.031 ft·lb", "Watt, WKilogram-Meters, kg m": "367.085 kg m", "Watt, WFoot-Pounds, ft·lb": "2,654.867 ft·lb", "Kilogram-Meters, kg mCalories, cal": "2.344 cal", "Gigawatt, GWElectronvolt, eV": "22,500,000,000,000,003,000,000,000,000,000 eV", "Megacalories, Mcalq, q": "0 q", "Inches Ounce, in·ozErgs, erg": "71,000 erg", "Btus, btuHorsepower, hp": "0 hp", "Gigawatt, GWFoot-Poundal, ft·pdl": "85,714,285,714,285.7 ft·pdl", "Calories, calBtus, btu": "0.004 btu", "Inches Pound, in·lbKilowatt, kW": "0 kW", "Kilocalories, kCalMegatons, MT": "0 MT", "Foot-Poundal, ft·pdlGigawatt, GW": "0 GW", "Kilojoule, kJHorsepower, hp": "0 hp", "Watt, WNewton-Meters, N m": "3,600 N m", "Foot-Poundal, ft·pdlInches Ounce, in·oz": "5.915 in·oz", "Kilocalories, kCalKilogram-Meters, kg m": "426.634 kg m", "Calories, calGigawatt, GW": "0 GW", "Calories, calq, q": "0 q", "Megacalories, McalKilogram-Meters, kg m": "426,919.547 kg m", "Btus, btuKilojoule, kJ": "1.055 kJ", "Electronvolt, eVKilojoule, kJ": "0 kJ", "Horsepower, hpCalories, cal": "641,615.559 cal", "Kilowatt, kWInches Pound, in·lb": "31,858,407.08 in·lb", "Inches Ounce, in·ozFoot-Poundal, ft·pdl": "0.169 ft·pdl", "Kilowatt, kWGigawatt, GW": "0 GW", "q, qq, q": "1 q", "Btus, btuGigawatt, GW": "0 GW", "Joules, JGigawatt, GW": "0 GW", "Foot-Poundal, ft·pdlElectronvolt, eV": "262,500,000,000,000,030 eV", "Kilowatt, kWKilowatt, kW": "1 kW", "Kilojoule, kJGigawatt, GW": "0 GW", "Horsepower, hpBtus, btu": "2,544.433 btu", "Electronvolt, eVElectronvolt, eV": "1 eV", "Kilojoule, kJWatt, W": "0.278 W", "Gigawatt, GWHorsepower, hp": "1,341,022.108 hp", "Kilojoule, kJNewton-Meters, N m": "1,000 N m", "Calories, calInches Ounce, in·oz": "589.296 in·oz", "Inches Ounce, in·ozBtus, btu": "0 btu", "Joules, JKilogram-Meters, kg m": "0.102 kg m", "Inches Ounce, in·ozGigawatt, GW": "0 GW", "Megatons, MTKilogram-Meters, kg m": "426,634,036,912,409.5 kg m", "Megatons, MTq, q": "0 q", "Horsepower, hpWatt, W": "745.7 W", "Kilogram-Meters, kg mKilojoule, kJ": "0.01 kJ", "Joules, JFoot-Poundal, ft·pdl": "23.81 ft·pdl", "Joules, JKilowatt, kW": "0 kW", "Inches Ounce, in·ozHorsepower, hp": "0 hp", "Btus, btuKilogram-Meters, kg m": "107.582 kg m", "Megacalories, McalNewton-Meters, N m": "4,186,800 N m", "Gigawatt, GWMegatons, MT": "0.001 MT", "Watt, WCalories, cal": "860.421 cal", "Foot-Pounds, ft·lbNewton-Meters, N m": "1.356 N m", "q, qFoot-Poundal, ft·pdl": "25,120,378,571,428,570,000,000 ft·pdl", "Kilogram-Meters, kg mGigawatt, GW": "0 GW", "Kilojoule, kJJoules, J": "1,000 J", "Kilojoule, kJErgs, erg": "10,000,000,000 erg", "Inches Pound, in·lbJoules, J": "0.113 J", "Foot-Pounds, ft·lbFoot-Pounds, ft·lb": "1 ft·lb", "q, qErgs, erg": "10,550,559,000,000,000,000,000,000,000 erg", "Inches Ounce, in·ozInches Ounce, in·oz": "1 in·oz", "Horsepower, hpKilowatt, kW": "0.746 kW", "q, qKilowatt, kW": "293,071,083,333,333.3 kW", "Megatons, MTInches Pound, in·lb": "37,026,548,672,566,370 in·lb", "Megatons, MTNewton-Meters, N m": "4,184,000,000,000,000 N m", "q, qFoot-Pounds, ft·lb": "778,064,823,008,849,600,000 ft·lb", "Kilogram-Meters, kg mElectronvolt, eV": "61,293,750,000,000,010,000 eV", "Ergs, ergNewton-Meters, N m": "0 N m", "Foot-Pounds, ft·lbKilogram-Meters, kg m": "0.138 kg m", "Gigawatt, GWGigawatt, GW": "1 GW", "Inches Pound, in·lbInches Ounce, in·oz": "15.915 in·oz", "Kilowatt, kWWatt, W": "1,000 W", "Btus, btuBtus, btu": "1 btu", "Kilocalories, kCalKilojoule, kJ": "4.184 kJ", "Megacalories, McalFoot-Pounds, ft·lb": "3,087,610.619 ft·lb", "Horsepower, hpNewton-Meters, N m": "2,684,519.5 N m", "Megacalories, McalInches Ounce, in·oz": "589,690,140.845 in·oz", "Joules, JInches Pound, in·lb": "8.85 in·lb", "Electronvolt, eVMegatons, MT": "0 MT", "Horsepower, hpInches Pound, in·lb": "23,756,809.735 in·lb", "Foot-Poundal, ft·pdlJoules, J": "0.042 J", "Kilocalories, kCalNewton-Meters, N m": "4,184 N m", "Kilowatt, kWq, q": "0 q", "Foot-Poundal, ft·pdlKilojoule, kJ": "0 kJ", "Foot-Poundal, ft·pdlFoot-Poundal, ft·pdl": "1 ft·pdl", "Watt, WBtus, btu": "3.412 btu", "Megatons, MTInches Ounce, in·oz": "589,295,774,647,887,200 in·oz", "Horsepower, hpElectronvolt, eV": "16,778,246,875,000,001,000,000,000 eV", "Btus, btuKilowatt, kW": "0 kW", "Calories, calErgs, erg": "41,840,000 erg", "Electronvolt, eVInches Pound, in·lb": "0 in·lb", "Kilogram-Meters, kg mHorsepower, hp": "0 hp", "Horsepower, hpq, q": "0 q", "Inches Pound, in·lbq, q": "0 q", "Electronvolt, eVWatt, W": "0 W", "Gigawatt, GWErgs, erg": "36,000,000,000,000,000,000 erg", "Watt, WKilowatt, kW": "0.001 kW", "Megacalories, McalWatt, W": "1,163 W", "Kilowatt, kWMegatons, MT": "0 MT", "Btus, btuJoules, J": "1,055.056 J", "q, qElectronvolt, eV": "6,594,099,375,000,000,000,000,000,000,000,000,000,000 eV", "Megatons, MTBtus, btu": "3,965,666,277,429.823 btu", "Megacalories, McalCalories, cal": "1,000,669.216 cal", "Foot-Pounds, ft·lbKilocalories, kCal": "0 kcal", "Kilowatt, kWKilojoule, kJ": "3,600 kJ", "Btus, btuMegatons, MT": "0 MT", "Megacalories, McalJoules, J": "4,186,800 J", "Kilojoule, kJKilogram-Meters, kg m": "101.968 kg m", "Inches Pound, in·lbElectronvolt, eV": "706,250,000,000,000,000 eV", "Horsepower, hpKilojoule, kJ": "2,684.52 kJ", "Inches Pound, in·lbBtus, btu": "0 btu", "Megatons, MTFoot-Poundal, ft·pdl": "99,619,047,619,047,620 ft·pdl", "Kilogram-Meters, kg mMegacalories, Mcal": "0 Mcal", "Electronvolt, eVGigawatt, GW": "0 GW", "Btus, btuNewton-Meters, N m": "1,055.056 N m", "Calories, calWatt, W": "0.001 W", "Newton-Meters, N mMegatons, MT": "0 MT", "Foot-Poundal, ft·pdlWatt, W": "0 W", "Megatons, MTWatt, W": "1,162,222,222,222.222 W", "Ergs, ergHorsepower, hp": "0 hp", "Megatons, MTHorsepower, hp": "1,558,565,694.904 hp", "Joules, JMegacalories, Mcal": "0 Mcal", "Btus, btuInches Ounce, in·oz": "148,599.437 in·oz", "Newton-Meters, N mFoot-Pounds, ft·lb": "0.737 ft·lb", "Megacalories, McalInches Pound, in·lb": "37,051,327.434 in·lb", "Ergs, ergMegacalories, Mcal": "0 Mcal", "Watt, WErgs, erg": "36,000,000,000 erg", "Foot-Poundal, ft·pdlErgs, erg": "420,000 erg", "Inches Pound, in·lbWatt, W": "0 W", "Inches Pound, in·lbKilojoule, kJ": "0 kJ", "Kilogram-Meters, kg mNewton-Meters, N m": "9.807 N m", "Inches Pound, in·lbCalories, cal": "0.027 cal", "Calories, calNewton-Meters, N m": "4.184 N m", "Foot-Pounds, ft·lbMegacalories, Mcal": "0 Mcal", "Newton-Meters, N mWatt, W": "0 W", "Kilowatt, kWFoot-Pounds, ft·lb": "2,654,867.257 ft·lb", "Kilocalories, kCalFoot-Pounds, ft·lb": "3,085.546 ft·lb", "Kilojoule, kJInches Pound, in·lb": "8,849.558 in·lb", "Newton-Meters, N mJoules, J": "1 J", "Foot-Poundal, ft·pdlKilowatt, kW": "0 kW", "Watt, WInches Ounce, in·oz": "507,042.254 in·oz", "Newton-Meters, N mInches Pound, in·lb": "8.85 in·lb", "Kilogram-Meters, kg mKilocalories, kCal": "0.002 kcal", "Horsepower, hpInches Ounce, in·oz": "378,101,338.028 in·oz", "Megatons, MTKilojoule, kJ": "4,184,000,000,000 kJ", "Foot-Pounds, ft·lbElectronvolt, eV": "8,475,000,000,000,001,000 eV", "Kilowatt, kWCalories, cal": "860,420.65 cal", "Inches Pound, in·lbKilocalories, kCal": "0 kcal", "Foot-Poundal, ft·pdlHorsepower, hp": "0 hp", "q, qKilocalories, kCal": "252,164,412,045,889,120 kcal", "Megacalories, McalKilojoule, kJ": "4,186.8 kJ", "Kilowatt, kWHorsepower, hp": "1.341 hp", "Watt, Wq, q": "0 q", "Btus, btuq, q": "0 q", "Btus, btuElectronvolt, eV": "6,594,100,000,000,001,000,000 eV", "Kilocalories, kCalBtus, btu": "3.966 btu", "q, qKilogram-Meters, kg m": "107,581,921,076,781,890,000 kg m", "Megatons, MTElectronvolt, eV": "26,150,000,000,000,004,000,000,000,000,000,000 eV", "Newton-Meters, N mq, q": "0 q", "Ergs, ergFoot-Poundal, ft·pdl": "0 ft·pdl", "Inches Ounce, in·ozMegacalories, Mcal": "0 Mcal", "Kilowatt, kWElectronvolt, eV": "22,500,000,000,000,000,000,000,000 eV", "Kilogram-Meters, kg mWatt, W": "0.003 W", "Kilocalories, kCalInches Pound, in·lb": "37,026.549 in·lb", "Foot-Poundal, ft·pdlMegacalories, Mcal": "0 Mcal", "Kilowatt, kWMegacalories, Mcal": "0.86 Mcal", "Btus, btuWatt, W": "0.293 W", "Ergs, ergElectronvolt, eV": "625,000,000,000 eV", "Kilocalories, kCalFoot-Poundal, ft·pdl": "99,619.048 ft·pdl", "Kilocalories, kCalGigawatt, GW": "0 GW", "Horsepower, hpMegatons, MT": "0 MT", "Gigawatt, GWJoules, J": "3,600,000,000,000 J", "Kilogram-Meters, kg mErgs, erg": "98,070,000 erg", "Watt, WFoot-Poundal, ft·pdl": "85,714.286 ft·pdl", "Calories, calFoot-Poundal, ft·pdl": "99.619 ft·pdl", "Foot-Poundal, ft·pdlBtus, btu": "0 btu", "Kilogram-Meters, kg mFoot-Pounds, ft·lb": "7.232 ft·lb", "q, qNewton-Meters, N m": "1,055,055,900,000,000,000,000 N m", "Ergs, ergKilogram-Meters, kg m": "0 kg m", "Electronvolt, eVFoot-Pounds, ft·lb": "0 ft·lb", "Foot-Pounds, ft·lbErgs, erg": "13,560,000 erg", "Foot-Pounds, ft·lbKilowatt, kW": "0 kW", "Ergs, ergKilowatt, kW": "0 kW", "Kilojoule, kJKilocalories, kCal": "0.239 kcal", "Horsepower, hpErgs, erg": "26,845,195,000,000 erg", "Foot-Poundal, ft·pdlKilogram-Meters, kg m": "0.004 kg m", "Kilowatt, kWJoules, J": "3,600,000 J", "Kilojoule, kJInches Ounce, in·oz": "140,845.07 in·oz", "Gigawatt, GWInches Pound, in·lb": "31,858,407,079,646.016 in·lb", "Kilocalories, kCalHorsepower, hp": "0.002 hp", "Kilojoule, kJFoot-Pounds, ft·lb": "737.463 ft·lb", "Megatons, MTErgs, erg": "41,840,000,000,000,000,000,000 erg", "Kilowatt, kWErgs, erg": "36,000,000,000,000 erg", "Joules, JHorsepower, hp": "0 hp", "Kilogram-Meters, kg mMegatons, MT": "0 MT", "Calories, calKilocalories, kCal": "0.001 kcal", "Calories, calKilojoule, kJ": "0.004 kJ", "Newton-Meters, N mFoot-Poundal, ft·pdl": "23.81 ft·pdl", "Kilowatt, kWNewton-Meters, N m": "3,600,000 N m", "Inches Ounce, in·ozCalories, cal": "0.002 cal", "Inches Ounce, in·ozNewton-Meters, N m": "0.007 N m", "Btus, btuCalories, cal": "252.164 cal", "Megacalories, McalErgs, erg": "41,868,000,000,000 erg", "Megacalories, McalFoot-Poundal, ft·pdl": "99,685,714.286 ft·pdl", "q, qInches Pound, in·lb": "9,336,777,876,106,195,000,000 in·lb", "Ergs, ergInches Ounce, in·oz": "0 in·oz", "Foot-Poundal, ft·pdlInches Pound, in·lb": "0.372 in·lb", "Horsepower, hpFoot-Poundal, ft·pdl": "63,917,130.952 ft·pdl", "Inches Ounce, in·ozWatt, W": "0 W", "Newton-Meters, N mKilowatt, kW": "0 kW", "Foot-Pounds, ft·lbInches Pound, in·lb": "12 in·lb", "Horsepower, hpJoules, J": "2,684,519.5 J", "Horsepower, hpHorsepower, hp": "1 hp", "Kilogram-Meters, kg mInches Ounce, in·oz": "1,381.268 in·oz", "Megatons, MTCalories, cal": "1,000,000,000,000,000 cal", "Kilogram-Meters, kg mKilowatt, kW": "0 kW", "Inches Ounce, in·ozKilojoule, kJ": "0 kJ", "Watt, WElectronvolt, eV": "22,500,000,000,000,003,000,000 eV", "Ergs, ergKilocalories, kCal": "0 kcal", "Calories, calHorsepower, hp": "0 hp", "q, qMegacalories, Mcal": "251,995,772,427,629.7 Mcal", "Ergs, ergKilojoule, kJ": "0 kJ", "Calories, calElectronvolt, eV": "26,150,000,000,000,004,000 eV", "Ergs, ergJoules, J": "0 J", "Foot-Poundal, ft·pdlq, q": "0 q", "Horsepower, hpMegacalories, Mcal": "0.641 Mcal", "Electronvolt, eVKilowatt, kW": "0 kW", "Gigawatt, GWKilowatt, kW": "1,000,000 kW", "Electronvolt, eVInches Ounce, in·oz": "0 in·oz", "Newton-Meters, N mMegacalories, Mcal": "0 Mcal", "Megacalories, McalBtus, btu": "3,968.32 btu", "Inches Ounce, in·ozKilogram-Meters, kg m": "0.001 kg m", "Foot-Pounds, ft·lbFoot-Poundal, ft·pdl": "32.286 ft·pdl", "Newton-Meters, N mHorsepower, hp": "0 hp", "Inches Pound, in·lbMegatons, MT": "0 MT", "Kilojoule, kJKilojoule, kJ": "1 kJ", "Inches Ounce, in·ozInches Pound, in·lb": "0.063 in·lb", "Calories, calKilogram-Meters, kg m": "0.427 kg m", "Electronvolt, eVBtus, btu": "0 btu", "Gigawatt, GWKilojoule, kJ": "3,600,000,000 kJ", "q, qGigawatt, GW": "293,071,083.333 GW", "Foot-Pounds, ft·lbInches Ounce, in·oz": "190.986 in·oz", "Foot-Pounds, ft·lbWatt, W": "0 W", "Gigawatt, GWBtus, btu": "3,412,141,156.488 btu", "Btus, btuFoot-Pounds, ft·lb": "778.065 ft·lb", "Newton-Meters, N mCalories, cal": "0.239 cal", "Watt, WInches Pound, in·lb": "31,858.407 in·lb", "Kilowatt, kWKilocalories, kCal": "860.421 kcal", "Gigawatt, GWMegacalories, Mcal": "859,845.228 Mcal", "Calories, calJoules, J": "4.184 J", "Electronvolt, eVHorsepower, hp": "0 hp", "Electronvolt, eVErgs, erg": "0 erg", "Kilojoule, kJCalories, cal": "239.006 cal", "q, qInches Ounce, in·oz": "148,599,422,535,211,260,000,000 in·oz", "Kilocalories, kCalJoules, J": "4,184 J", "Joules, JWatt, W": "0 W", "Watt, WMegacalories, Mcal": "0.001 Mcal", "Ergs, ergCalories, cal": "0 cal", "Foot-Pounds, ft·lbGigawatt, GW": "0 GW", "Btus, btuErgs, erg": "10,550,560,000 erg", "Horsepower, hpKilogram-Meters, kg m": "273,735.036 kg m", "Watt, WKilocalories, kCal": "0.86 kcal", "Megacalories, McalMegatons, MT": "0 MT", "Megatons, MTMegatons, MT": "1 MT", "Watt, WHorsepower, hp": "0.001 hp", "Ergs, ergq, q": "0 q", "Calories, calCalories, cal": "1 cal", "Megacalories, McalHorsepower, hp": "1.56 hp", "Gigawatt, GWWatt, W": "1,000,000,000 W", "q, qMegatons, MT": "252,164.412 MT", "Calories, calMegacalories, Mcal": "0 Mcal", "Foot-Pounds, ft·lbKilojoule, kJ": "0.001 kJ", "Kilocalories, kCalKilocalories, kCal": "1 kcal", "Kilojoule, kJFoot-Poundal, ft·pdl": "23,809.524 ft·pdl", "Megatons, MTJoules, J": "4,184,000,000,000,000 J", "Kilowatt, kWBtus, btu": "3,412.141 btu", "Gigawatt, GWCalories, cal": "860,420,650,095.602 cal", "Kilogram-Meters, kg mBtus, btu": "0.009 btu", "Inches Ounce, in·ozKilocalories, kCal": "0 kcal", "Megatons, MTKilocalories, kCal": "1,000,000,000,000 kcal", "Kilowatt, kWInches Ounce, in·oz": "507,042,253.521 in·oz", "Calories, calInches Pound, in·lb": "37.027 in·lb", "Gigawatt, GWq, q": "0 q", "Ergs, ergErgs, erg": "1 erg", "Joules, JNewton-Meters, N m": "1 N m", "q, qJoules, J": "1,055,055,900,000,000,000,000 J", "Joules, JErgs, erg": "10,000,000 erg", "Megatons, MTMegacalories, Mcal": "999,331,231.489 Mcal", "Horsepower, hpKilocalories, kCal": "641.616 kcal", "q, qKilojoule, kJ": "1,055,055,900,000,000,000 kJ", "Inches Pound, in·lbMegacalories, Mcal": "0 Mcal", "Gigawatt, GWKilocalories, kCal": "860,420,650.096 kcal", "Joules, JElectronvolt, eV": "6,250,000,000,000,000,000 eV", "q, qWatt, W": "293,071,083,333,333,300 W", "Kilojoule, kJBtus, btu": "0.948 btu", "Foot-Pounds, ft·lbMegatons, MT": "0 MT", "Megacalories, McalMegacalories, Mcal": "1 Mcal", "Joules, JMegatons, MT": "0 MT", "Inches Pound, in·lbHorsepower, hp": "0 hp", "Gigawatt, GWNewton-Meters, N m": "3,600,000,000,000 N m", "Btus, btuKilocalories, kCal": "0.252 kcal", "Inches Pound, in·lbFoot-Poundal, ft·pdl": "2.69 ft·pdl", "Kilocalories, kCalMegacalories, Mcal": "0.001 Mcal", "Ergs, ergBtus, btu": "0 btu", "q, qHorsepower, hp": "393,014,802,090,280.94 hp", "Ergs, ergMegatons, MT": "0 MT", "Newton-Meters, N mErgs, erg": "10,000,000 erg", "Btus, btuFoot-Poundal, ft·pdl": "25,120.381 ft·pdl", "Joules, JJoules, J": "1 J", "Inches Pound, in·lbErgs, erg": "1,130,000 erg", "Newton-Meters, N mElectronvolt, eV": "6,250,000,000,000,000,000 eV", "Foot-Pounds, ft·lbJoules, J": "1.356 J", "Inches Ounce, in·ozFoot-Pounds, ft·lb": "0.005 ft·lb", "Megatons, MTKilowatt, kW": "1,162,222,222.222 kW", "Kilocalories, kCalElectronvolt, eV": "26,150,000,000,000,003,000,000 eV", "Kilojoule, kJMegatons, MT": "0 MT", "Horsepower, hpFoot-Pounds, ft·lb": "1,979,734.145 ft·lb", "Kilogram-Meters, kg mq, q": "0 q", "Electronvolt, eVMegacalories, Mcal": "0 Mcal", "Inches Pound, in·lbInches Pound, in·lb": "1 in·lb", "Foot-Pounds, ft·lbHorsepower, hp": "0 hp", "Inches Ounce, in·ozMegatons, MT": "0 MT", "Joules, JKilocalories, kCal": "0 kcal", "Kilojoule, kJq, q": "0 q", "Foot-Pounds, ft·lbBtus, btu": "0.001 btu", "Joules, JCalories, cal": "0.239 cal", "Kilocalories, kCalErgs, erg": "41,840,000,000 erg", "Gigawatt, GWKilogram-Meters, kg m": "367,084,735,393.087 kg m", "Inches Pound, in·lbKilogram-Meters, kg m": "0.012 kg m", "Newton-Meters, N mNewton-Meters, N m": "1 N m"]

            
//    let keys1 =
//    ["Btus, btu", "Calories, cal", "Electronvolt, eV", "Ergs, erg", "Foot-Poundal, ft·pdl", "Foot-Pounds, ft·lb", "Gigawatt, GW", "Horsepower, hp", "Inches Ounce, in·oz", "Inches Pound, in·lb", "Joules, J", "Kilocalories, kCal", "Kilogram-Meters, kg m", "Kilojoule, kJ", "Kilowatt, kW", "Megacalories, Mcal", "Megatons, MT", "Newton-Meters, N m", "q, q", "Watt, W"]
//    
//    let keys2 =
//    ["Btus, btu", "Calories, cal", "Electronvolt, eV", "Ergs, erg", "Foot-Poundal, ft·pdl", "Foot-Pounds, ft·lb", "Gigawatt, GW", "Horsepower, hp", "Inches Ounce, in·oz", "Inches Pound, in·lb", "Joules, J", "Kilocalories, kCal", "Kilogram-Meters, kg m", "Kilojoule, kJ", "Kilowatt, kW", "Megacalories, Mcal", "Megatons, MT", "Newton-Meters, N m", "q, q", "Watt, W"]
//            
//            init () {
//
//
//                let formatter = MeasurementFormatter()
//                formatter.unitOptions = .providedUnit
//                for itema in keys1 {
//                    for itemb in keys2 {
//                        let itemc = itema + itemb
//                        let val1 = Measurement(value: 1.0 , unit: type(itema))
//                        let val2 = val1.converted(to: type(itemb))
//                        let storeval =  formatter.string(from: val2)
//                        energydict[itemc] = storeval
//                    }
//                }
//
//                print ("Final Dict :", energydict)
//            }
            
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
                                        Text(self.DisplayUnit1 + "  "  + env.displayconvertener)
                                        }
                                    .sheet(isPresented: $ShowUnit1) {
                                        ModalEnergy(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                    }
                                        .font(.system(size: 40))
                                        .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                        .foregroundColor(.white)
                                        .background(Color.gray)
                                        .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                            
                                    Button(action: {
                                        self.ShowUnit2.toggle()
                                    }) {
                                                                           Text(self.DisplayUnit2 + "  " + calc(env.displayconvertener, self.DisplayUnit1, self.DisplayUnit2))
//                                        Text(self.DisplayUnit2 + "  ")
                                        }
                                        .sheet(isPresented: $ShowUnit2) {
                                            ModalEnergy(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
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
    
//    private func save() -> String {
//        return env.displayconvert
//    }
    
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
        let formatter = MeasurementFormatter()
        let stringval: String = unit1  +  unit2
        let storedval = (energydict[stringval, default: "1"])
        let operand1 = (unit1val as NSString).doubleValue
        let operand2 = (storedval as NSString).doubleValue
        return String(operand1 * operand2)
        
    }
    
    private func type(_ unit: String) -> UnitEnergy {
     
     if unit == "Btus, btu" {
     return UnitEnergy.btus
     }
     else if unit == "Calories, cal" {
     return UnitEnergy.calories
     }
     else if unit == "Electronvolt, eV" {
     return UnitEnergy.evolt
     }
     else if unit == "Ergs, erg" {
     return UnitEnergy.ergs
     }
     else if unit == "Foot-Poundal, ft·pdl" {
     return UnitEnergy.ftpoundal
     }
     else if unit == "Foot-Pounds, ft·lb" {
     return UnitEnergy.ftpounds
     }
     else if unit == "Gigawatt, GW" {
     return UnitEnergy.gigawatt
     }
     else if unit == "Horsepower, hp" {
     return UnitEnergy.horsepower
     }
     else if unit == "Inches Ounce, in·oz" {
     return UnitEnergy.in_ounces
     }
     else if unit == "Inches Pound, in·lb" {
     return UnitEnergy.in_pounds
     }
     else if unit == "Joules, J" {
     return UnitEnergy.joules
     }
     else if unit == "Kilocalories, kCal" {
     return UnitEnergy.kilocalories
     }
     else if unit == "Kilogram-Meters, kg m" {
     return UnitEnergy.kg_meters
     }
     else if unit == "Kilojoule, kJ" {
     return UnitEnergy.kilojoules
     }
     else if unit == "Kilowatt, kW" {
     return UnitEnergy.kilowatt
     }
     else if unit == "Megacalories, Mcal" {
     return UnitEnergy.megacal
     }
     else if unit == "Megatons, MT" {
     return UnitEnergy.megatons
     }
     else if unit == "Newton-Meters, N m" {
     return UnitEnergy.newton_meters
     }
     else if unit == "q, q" {
     return UnitEnergy.q
     }
     return UnitEnergy.watt
    }




}

struct Energy_Previews: PreviewProvider {
    static var previews: some View {
        Energy()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}

extension UnitEnergy {
 static let btus = UnitEnergy(symbol: "btu", converter: UnitConverterLinear(coefficient: 1055.056))
 static let evolt = UnitEnergy(symbol: "eV", converter: UnitConverterLinear(coefficient: 0.00000000000000000016))
 static let ergs = UnitEnergy(symbol: "erg", converter: UnitConverterLinear(coefficient: 0.0000001))
 static let ftpoundal = UnitEnergy(symbol: "ft·pdl", converter: UnitConverterLinear(coefficient: 0.042))
 static let ftpounds = UnitEnergy(symbol: "ft·lb", converter: UnitConverterLinear(coefficient: 1.356))
 static let gigawatt = UnitEnergy(symbol: "GW", converter: UnitConverterLinear(coefficient: 3600000000000))
 static let horsepower = UnitEnergy(symbol: "hp", converter: UnitConverterLinear(coefficient: 2684519.5))
 static let in_ounces = UnitEnergy(symbol: "in·oz", converter: UnitConverterLinear(coefficient: 0.0071))
 static let in_pounds = UnitEnergy(symbol: "in·lb", converter: UnitConverterLinear(coefficient: 0.113))
 static let kg_meters = UnitEnergy(symbol: "kg m", converter: UnitConverterLinear(coefficient: 9.807))
 static let kilowatt = UnitEnergy(symbol: "kW", converter: UnitConverterLinear(coefficient: 3600000))
 static let megacal = UnitEnergy(symbol: "Mcal", converter: UnitConverterLinear(coefficient: 4186800))
 static let megatons = UnitEnergy(symbol: "MT", converter: UnitConverterLinear(coefficient: 4184000000000000))
 static let newton_meters = UnitEnergy(symbol: "N m", converter: UnitConverterLinear(coefficient: 1))
 static let q = UnitEnergy(symbol: "q", converter: UnitConverterLinear(coefficient: 1055055900000000000000))
 static let watt = UnitEnergy(symbol: "W", converter: UnitConverterLinear(coefficient: 3600))
}
