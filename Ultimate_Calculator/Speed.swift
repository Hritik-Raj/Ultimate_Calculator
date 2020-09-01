//
//  Speed.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct Speed: View {
          @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
    
        var speeddict : [String : String] = ["Kilometers/Second, km/sFeet/Second, ft/sec": "3,278.689 ft/sec", "Miles/Hour, mphSound (air), m/s": "0.001 m/s", "Kilometers/Minute, km/minFeet/Minute, ft/min": "3,268.039 ft/min", "Feet/Minute, ft/minMeters/Minute, m/min": "0.3 m/min", "Feet/Second, ft/secKilometers/Hour, km/hr": "1.098 km/h", "Knots, knKnots, kn": "1 kn", "Mach, MaMeters/Hour, m/h": "1,215,321.429 m/h", "Mach, MaLight (vaccum), c": "0 c", "Kilometers/Hour, km/hrCentimeters/Second, cm/s": "0.278 m/s", "Meters/Minute, m/minKilometers/Hour, km/hr": "0.061 km/h", "Feet/Second, ft/secKilometers/Second, km/s": "0 km/s", "Centimeters/Second, cm/sMeters/Hour, m/h": "3,571.429 m/h", "Miles/Hour, mphKilometers/Hour, km/hr": "1.609 km/h", "Miles/Minute, mil/minKilometers/Hour, km/hr": "96.559 km/h", "Kilometers/Minute, km/minMeters/Minute, m/min": "980.412 m/min", "Miles/Hour, mphFeet/Minute, ft/min": "87.655 ft/min", "Miles/Minute, mil/minMeters/Hour, m/h": "95,792.857 m/h", "Miles/Second, mil/sMeters/Hour, m/h": "5,747,657.143 m/h", "Miles/Second, mil/sSound (air), m/s": "4.729 m/s", "Kilometers/Minute, km/minMeters/Second, m/sec": "16.667 m/s", "Millimeters/Second, mm/sLight (vaccum), c": "0 c", "Centimeters/Second, cm/sInches/Second, in/s": "40 in/s", "Meters/Second, m/secMiles/Hour, mph": "2.237 mph", "Meters/Second, m/secFeet/Minute, ft/min": "196.078 ft/min", "Kilometers/Second, km/sMiles/Hour, mph": "2,236.936 mph", "Inches/Second, in/sKilometers/Second, km/s": "0 km/s", "Miles/Minute, mil/minMeters/Second, m/sec": "26.822 m/s", "Meters/Minute, m/minMeters/Hour, m/h": "60.714 m/h", "Inches/Second, in/sFeet/Minute, ft/min": "4.902 ft/min", "Inches/Second, in/sKnots, kn": "0.049 kn", "Meters/Hour, m/hInches/Second, in/s": "0.011 in/s", "Kilometers/Hour, km/hrInches/Second, in/s": "11.111 in/s", "Kilometers/Second, km/sMeters/Second, m/sec": "1,000 m/s", "Mach, MaKnots, kn": "661.471 kn", "Centimeters/Second, cm/sMiles/Second, mil/s": "0.001 mil/s", "Meters/Second, m/secKnots, kn": "1.944 kn", "Miles/Hour, mphKnots, kn": "0.869 kn", "Millimeters/Second, mm/sKilometers/Hour, km/hr": "0.004 km/h", "Sound (air), m/sLight (vaccum), c": "0 c", "Millimeters/Second, mm/sFeet/Minute, ft/min": "0.196 ft/min", "Sound (air), m/sInches/Second, in/s": "13,611.6 in/s", "Kilometers/Hour, km/hrSound (air), m/s": "0.001 m/s", "Miles/Hour, mphMiles/Minute, mil/min": "0.017 mil/min", "Miles/Second, mil/sCentimeters/Second, cm/s": "1,609.344 m/s", "Centimeters/Second, cm/sCentimeters/Second, cm/s": "1 m/s", "Knots, knKilometers/Minute, km/min": "0.031 km/min", "Kilometers/Hour, km/hrMeters/Hour, m/h": "992.064 m/h", "Kilometers/Second, km/sLight (vaccum), c": "0 c", "Miles/Second, mil/sKilometers/Minute, km/min": "96.559 km/min", "Mach, MaMiles/Hour, mph": "761.207 mph", "Kilometers/Second, km/sKilometers/Second, km/s": "1 km/s", "Inches/Second, in/sFeet/Second, ft/sec": "0.082 ft/sec", "Miles/Hour, mphKilometers/Second, km/s": "0 km/s", "Kilometers/Hour, km/hrMiles/Minute, mil/min": "0.01 mil/min", "Miles/Minute, mil/minMach, Ma": "0.079 Ma", "Meters/Second, m/secKilometers/Minute, km/min": "0.06 km/min", "Knots, knMiles/Hour, mph": "1.151 mph", "Kilometers/Minute, km/minMiles/Hour, mph": "37.283 mph", "Kilometers/Minute, km/minSound (air), m/s": "0.049 m/s", "Meters/Minute, m/minFeet/Second, ft/sec": "0.056 ft/sec", "Millimeters/Second, mm/sMillimeters/Second, mm/s": "1 mm/s", "Feet/Second, ft/secLight (vaccum), c": "0 c", "Miles/Hour, mphMiles/Second, mil/s": "0 mil/s", "Feet/Minute, ft/minFeet/Second, ft/sec": "0.017 ft/sec", "Kilometers/Second, km/sKilometers/Hour, km/hr": "3,599.997 km/h", "Feet/Second, ft/secMeters/Second, m/sec": "0.305 m/s", "Miles/Second, mil/sMillimeters/Second, mm/s": "1,609,344 mm/s", "Sound (air), m/sMiles/Minute, mil/min": "12.687 mil/min", "Kilometers/Hour, km/hrMiles/Second, mil/s": "0 mil/s", "Feet/Minute, ft/minKilometers/Hour, km/hr": "0.018 km/h", "Feet/Minute, ft/minMiles/Minute, mil/min": "0 mil/min", "Meters/Hour, m/hMeters/Hour, m/h": "1 m/h", "Meters/Hour, m/hMach, Ma": "0 Ma", "Meters/Minute, m/minKilometers/Minute, km/min": "0.001 km/min", "Meters/Minute, m/minMeters/Minute, m/min": "1 m/min", "Meters/Second, m/secLight (vaccum), c": "0 c", "Mach, MaKilometers/Hour, km/hr": "1,225.043 km/h", "Feet/Minute, ft/minKilometers/Second, km/s": "0 km/s", "Inches/Second, in/sMeters/Second, m/sec": "0.025 m/s", "Centimeters/Second, cm/sKilometers/Minute, km/min": "0.06 km/min", "Knots, knSound (air), m/s": "0.002 m/s", "Miles/Second, mil/sKilometers/Second, km/s": "1.609 km/s", "Meters/Minute, m/minCentimeters/Second, cm/s": "0.017 m/s", "Miles/Hour, mphMeters/Hour, m/h": "1,596.571 m/h", "Miles/Second, mil/sFeet/Minute, ft/min": "315,557.647 ft/min", "Miles/Second, mil/sKilometers/Hour, km/hr": "5,793.634 km/h", "Feet/Minute, ft/minKnots, kn": "0.01 kn", "Meters/Hour, m/hFeet/Minute, ft/min": "0.055 ft/min", "Mach, MaCentimeters/Second, cm/s": "340.29 m/s", "Inches/Second, in/sMach, Ma": "0 Ma", "Meters/Hour, m/hLight (vaccum), c": "0 c", "Feet/Second, ft/secSound (air), m/s": "0.001 m/s", "Feet/Minute, ft/minInches/Second, in/s": "0.204 in/s", "Kilometers/Minute, km/minMillimeters/Second, mm/s": "16,667 mm/s", "Centimeters/Second, cm/sKnots, kn": "1.944 kn", "Inches/Second, in/sMeters/Hour, m/h": "89.286 m/h", "Mach, MaKilometers/Second, km/s": "0.34 km/s", "Kilometers/Minute, km/minKilometers/Minute, km/min": "1 km/min", "Feet/Second, ft/secKilometers/Minute, km/min": "0.018 km/min", "Miles/Hour, mphMiles/Hour, mph": "1 mph", "Miles/Minute, mil/minMiles/Hour, mph": "59.999 mph", "Millimeters/Second, mm/sKilometers/Minute, km/min": "0 km/min", "Feet/Minute, ft/minMach, Ma": "0 Ma", "Kilometers/Minute, km/minKnots, kn": "32.398 kn", "Miles/Minute, mil/minCentimeters/Second, cm/s": "26.822 m/s", "Millimeters/Second, mm/sMeters/Hour, m/h": "3.571 m/h", "Kilometers/Second, km/sMillimeters/Second, mm/s": "1,000,000 mm/s", "Kilometers/Second, km/sMiles/Second, mil/s": "0.621 mil/s", "Meters/Minute, m/minLight (vaccum), c": "0 c", "Sound (air), m/sMiles/Second, mil/s": "0.211 mil/s", "Kilometers/Minute, km/minInches/Second, in/s": "666.68 in/s", "Light (vaccum), cKnots, kn": "582,750,421.815 kn", "Meters/Second, m/secMach, Ma": "0.003 Ma", "Meters/Minute, m/minSound (air), m/s": "0 m/s", "Sound (air), m/sMach, Ma": "1 Ma", "Kilometers/Minute, km/minMiles/Minute, mil/min": "0.621 mil/min", "Miles/Hour, mphLight (vaccum), c": "0 c", "Sound (air), m/sMiles/Hour, mph": "761.207 mph", "Kilometers/Hour, km/hrMillimeters/Second, mm/s": "277.778 mm/s", "Knots, knKilometers/Hour, km/hr": "1.852 km/h", "Miles/Minute, mil/minMillimeters/Second, mm/s": "26,822 mm/s", "Miles/Second, mil/sInches/Second, in/s": "64,373.76 in/s", "Knots, knFeet/Second, ft/sec": "1.687 ft/sec", "Feet/Second, ft/secMiles/Second, mil/s": "0 mil/s", "Kilometers/Second, km/sKilometers/Minute, km/min": "59.999 km/min", "Knots, knCentimeters/Second, cm/s": "0.514 m/s", "Feet/Minute, ft/minMiles/Hour, mph": "0.011 mph", "Miles/Minute, mil/minSound (air), m/s": "0.079 m/s", "Miles/Second, mil/sFeet/Second, ft/sec": "5,276.538 ft/sec", "Light (vaccum), cLight (vaccum), c": "1 c", "Meters/Hour, m/hKnots, kn": "0.001 kn", "Millimeters/Second, mm/sMach, Ma": "0 Ma", "Meters/Minute, m/minMach, Ma": "0 Ma", "Meters/Second, m/secMeters/Hour, m/h": "3,571.429 m/h", "Knots, knLight (vaccum), c": "0 c", "Feet/Minute, ft/minMillimeters/Second, mm/s": "5.1 mm/s", "Light (vaccum), cMiles/Hour, mph": "670,616,629.384 mph", "Millimeters/Second, mm/sCentimeters/Second, cm/s": "0.001 m/s", "Sound (air), m/sFeet/Minute, ft/min": "66,723.529 ft/min", "Kilometers/Hour, km/hrMeters/Minute, m/min": "16.34 m/min", "Meters/Second, m/secInches/Second, in/s": "40 in/s", "Feet/Second, ft/secMillimeters/Second, mm/s": "305 mm/s", "Feet/Second, ft/secMiles/Hour, mph": "0.682 mph", "Knots, knMeters/Minute, m/min": "30.261 m/min", "Inches/Second, in/sMillimeters/Second, mm/s": "25 mm/s", "Mach, MaMeters/Minute, m/min": "20,017.059 m/min", "Centimeters/Second, cm/sMillimeters/Second, mm/s": "1,000 mm/s", "Light (vaccum), cMeters/Minute, m/min": "17,634,850,470.588 m/min", "Miles/Hour, mphMeters/Second, m/sec": "0.447 m/s", "Light (vaccum), cCentimeters/Second, cm/s": "299,792,458 m/s", "Feet/Second, ft/secFeet/Minute, ft/min": "59.804 ft/min", "Knots, knMiles/Minute, mil/min": "0.019 mil/min", "Centimeters/Second, cm/sMiles/Minute, mil/min": "0.037 mil/min", "Sound (air), m/sKilometers/Minute, km/min": "20.417 km/min", "Inches/Second, in/sMiles/Second, mil/s": "0 mil/s", "Kilometers/Hour, km/hrFeet/Second, ft/sec": "0.911 ft/sec", "Meters/Hour, m/hMeters/Second, m/sec": "0 m/s", "Meters/Second, m/secMiles/Second, mil/s": "0.001 mil/s", "Mach, MaInches/Second, in/s": "13,611.6 in/s", "Miles/Second, mil/sMeters/Second, m/sec": "1,609.344 m/s", "Feet/Minute, ft/minCentimeters/Second, cm/s": "0.005 m/s", "Sound (air), m/sMeters/Hour, m/h": "1,215,321.429 m/h", "Meters/Second, m/secMeters/Second, m/sec": "1 m/s", "Miles/Hour, mphMillimeters/Second, mm/s": "447.04 mm/s", "Light (vaccum), cSound (air), m/s": "880,991.09 m/s", "Kilometers/Minute, km/minLight (vaccum), c": "0 c", "Centimeters/Second, cm/sMeters/Minute, m/min": "58.824 m/min", "Centimeters/Second, cm/sSound (air), m/s": "0.003 m/s", "Kilometers/Second, km/sCentimeters/Second, cm/s": "1,000 m/s", "Feet/Minute, ft/minSound (air), m/s": "0 m/s", "Feet/Second, ft/secKnots, kn": "0.593 kn", "Miles/Second, mil/sMeters/Minute, m/min": "94,667.294 m/min", "Miles/Second, mil/sMiles/Hour, mph": "3,600 mph", "Miles/Minute, mil/minFeet/Minute, ft/min": "5,259.216 ft/min", "Millimeters/Second, mm/sKilometers/Second, km/s": "0 km/s", "Light (vaccum), cMiles/Second, mil/s": "186,282.397 mil/s", "Kilometers/Minute, km/minKilometers/Second, km/s": "0.017 km/s", "Meters/Hour, m/hKilometers/Minute, km/min": "0 km/min", "Kilometers/Minute, km/minMeters/Hour, m/h": "59,525 m/h", "Millimeters/Second, mm/sMiles/Second, mil/s": "0 mil/s", "Meters/Second, m/secKilometers/Second, km/s": "0.001 km/s", "Kilometers/Minute, km/minMach, Ma": "0.049 Ma", "Meters/Second, m/secMeters/Minute, m/min": "58.824 m/min", "Meters/Second, m/secSound (air), m/s": "0.003 m/s", "Light (vaccum), cMiles/Minute, mil/min": "11,177,110.506 mil/min", "Kilometers/Second, km/sInches/Second, in/s": "40,000 in/s", "Miles/Second, mil/sKnots, kn": "3,128.317 kn", "Feet/Minute, ft/minLight (vaccum), c": "0 c", "Light (vaccum), cMach, Ma": "880,991.09 Ma", "Feet/Minute, ft/minFeet/Minute, ft/min": "1 ft/min", "Miles/Minute, mil/minKilometers/Minute, km/min": "1.609 km/min", "Millimeters/Second, mm/sMiles/Hour, mph": "0.002 mph", "Light (vaccum), cMeters/Second, m/sec": "299,792,458 m/s", "Meters/Second, m/secMillimeters/Second, mm/s": "1,000 mm/s", "Kilometers/Hour, km/hrMeters/Second, m/sec": "0.278 m/s", "Meters/Hour, m/hMeters/Minute, m/min": "0.016 m/min", "Knots, knMeters/Second, m/sec": "0.514 m/s", "Meters/Minute, m/minFeet/Minute, ft/min": "3.333 ft/min", "Miles/Minute, mil/minFeet/Second, ft/sec": "87.941 ft/sec", "Miles/Minute, mil/minKnots, kn": "52.138 kn", "Knots, knMeters/Hour, m/h": "1,837.3 m/h", "Meters/Hour, m/hFeet/Second, ft/sec": "0.001 ft/sec", "Mach, MaMeters/Second, m/sec": "340.29 m/s", "Light (vaccum), cFeet/Second, ft/sec": "982,926,091.803 ft/sec", "Mach, MaFeet/Minute, ft/min": "66,723.529 ft/min", "Meters/Minute, m/minKilometers/Second, km/s": "0 km/s", "Miles/Hour, mphMeters/Minute, m/min": "26.296 m/min", "Kilometers/Hour, km/hrKilometers/Second, km/s": "0 km/s", "Inches/Second, in/sSound (air), m/s": "0 m/s", "Miles/Second, mil/sLight (vaccum), c": "0 c", "Kilometers/Second, km/sMeters/Hour, m/h": "3,571,428.571 m/h", "Meters/Second, m/secFeet/Second, ft/sec": "3.279 ft/sec", "Meters/Second, m/secKilometers/Hour, km/hr": "3.6 km/h", "Meters/Hour, m/hMiles/Minute, mil/min": "0 mil/min", "Feet/Minute, ft/minMeters/Second, m/sec": "0.005 m/s", "Millimeters/Second, mm/sMeters/Minute, m/min": "0.059 m/min", "Feet/Second, ft/secMiles/Minute, mil/min": "0.011 mil/min", "Miles/Hour, mphKilometers/Minute, km/min": "0.027 km/min", "Meters/Minute, m/minMeters/Second, m/sec": "0.017 m/s", "Knots, knFeet/Minute, ft/min": "100.871 ft/min", "Kilometers/Second, km/sMeters/Minute, m/min": "58,823.529 m/min", "Millimeters/Second, mm/sSound (air), m/s": "0 m/s", "Feet/Second, ft/secCentimeters/Second, cm/s": "0.305 m/s", "Knots, knInches/Second, in/s": "20.578 in/s", "Kilometers/Hour, km/hrLight (vaccum), c": "0 c", "Meters/Minute, m/minMillimeters/Second, mm/s": "17 mm/s", "Meters/Second, m/secMiles/Minute, mil/min": "0.037 mil/min", "Kilometers/Hour, km/hrKilometers/Hour, km/hr": "1 km/h", "Inches/Second, in/sLight (vaccum), c": "0 c", "Millimeters/Second, mm/sMeters/Second, m/sec": "0.001 m/s", "Sound (air), m/sCentimeters/Second, cm/s": "340.29 m/s", "Feet/Second, ft/secMeters/Minute, m/min": "17.941 m/min", "Millimeters/Second, mm/sKnots, kn": "0.002 kn", "Miles/Second, mil/sMiles/Minute, mil/min": "60.001 mil/min", "Kilometers/Second, km/sFeet/Minute, ft/min": "196,078.431 ft/min", "Miles/Second, mil/sMach, Ma": "4.729 Ma", "Light (vaccum), cFeet/Minute, ft/min": "58,782,834,901.961 ft/min", "Millimeters/Second, mm/sMiles/Minute, mil/min": "0 mil/min", "Light (vaccum), cInches/Second, in/s": "11,991,698,320 in/s", "Inches/Second, in/sInches/Second, in/s": "1 in/s", "Miles/Hour, mphFeet/Second, ft/sec": "1.466 ft/sec", "Mach, MaMach, Ma": "1 Ma", "Millimeters/Second, mm/sInches/Second, in/s": "0.04 in/s", "Meters/Minute, m/minMiles/Second, mil/s": "0 mil/s", "Miles/Minute, mil/minMeters/Minute, m/min": "1,577.765 m/min", "Miles/Second, mil/sMiles/Second, mil/s": "1 mil/s", "Knots, knMillimeters/Second, mm/s": "514.444 mm/s", "Kilometers/Minute, km/minKilometers/Hour, km/hr": "60.001 km/h", "Meters/Hour, m/hSound (air), m/s": "0 m/s", "Meters/Minute, m/minInches/Second, in/s": "0.68 in/s", "Mach, MaMillimeters/Second, mm/s": "340,290 mm/s", "Kilometers/Hour, km/hrMach, Ma": "0.001 Ma", "Kilometers/Minute, km/minMiles/Second, mil/s": "0.01 mil/s", "Sound (air), m/sMeters/Minute, m/min": "20,017.059 m/min", "Knots, knMiles/Second, mil/s": "0 mil/s", "Inches/Second, in/sMeters/Minute, m/min": "1.471 m/min", "Meters/Hour, m/hKilometers/Second, km/s": "0 km/s", "Meters/Hour, m/hMiles/Hour, mph": "0.001 mph", "Miles/Hour, mphMach, Ma": "0.001 Ma", "Sound (air), m/sKilometers/Second, km/s": "0.34 km/s", "Light (vaccum), cKilometers/Second, km/s": "299,792.458 km/s", "Feet/Second, ft/secFeet/Second, ft/sec": "1 ft/sec", "Kilometers/Hour, km/hrKilometers/Minute, km/min": "0.017 km/min", "Kilometers/Second, km/sSound (air), m/s": "2.939 m/s", "Sound (air), m/sKilometers/Hour, km/hr": "1,225.043 km/h", "Centimeters/Second, cm/sMach, Ma": "0.003 Ma", "Inches/Second, in/sCentimeters/Second, cm/s": "0.025 m/s", "Miles/Hour, mphInches/Second, in/s": "17.882 in/s", "Centimeters/Second, cm/sKilometers/Hour, km/hr": "3.6 km/h", "Feet/Second, ft/secInches/Second, in/s": "12.2 in/s", "Kilometers/Second, km/sKnots, kn": "1,943.846 kn", "Mach, MaKilometers/Minute, km/min": "20.417 km/min", "Centimeters/Second, cm/sFeet/Second, ft/sec": "3.279 ft/sec", "Sound (air), m/sMeters/Second, m/sec": "340.29 m/s", "Mach, MaFeet/Second, ft/sec": "1,115.705 ft/sec", "Meters/Hour, m/hKilometers/Hour, km/hr": "0.001 km/h", "Light (vaccum), cMillimeters/Second, mm/s": "299,792,458,000 mm/s", "Miles/Minute, mil/minKilometers/Second, km/s": "0.027 km/s", "Feet/Minute, ft/minMiles/Second, mil/s": "0 mil/s", "Meters/Second, m/secCentimeters/Second, cm/s": "1 m/s", "Miles/Minute, mil/minMiles/Second, mil/s": "0.017 mil/s", "Sound (air), m/sFeet/Second, ft/sec": "1,115.705 ft/sec", "Meters/Minute, m/minMiles/Hour, mph": "0.038 mph", "Light (vaccum), cKilometers/Minute, km/min": "17,987,187.736 km/min", "Light (vaccum), cKilometers/Hour, km/hr": "1,079,251,985.398 km/h", "Miles/Minute, mil/minLight (vaccum), c": "0 c", "Centimeters/Second, cm/sMiles/Hour, mph": "2.237 mph", "Feet/Minute, ft/minKilometers/Minute, km/min": "0 km/min", "Meters/Minute, m/minKnots, kn": "0.033 kn", "Miles/Minute, mil/minMiles/Minute, mil/min": "1 mil/min", "Kilometers/Minute, km/minCentimeters/Second, cm/s": "16.667 m/s", "Inches/Second, in/sKilometers/Hour, km/hr": "0.09 km/h", "Centimeters/Second, cm/sFeet/Minute, ft/min": "196.078 ft/min", "Knots, knMach, Ma": "0.002 Ma", "Miles/Minute, mil/minInches/Second, in/s": "1,072.88 in/s", "Inches/Second, in/sKilometers/Minute, km/min": "0.001 km/min", "Kilometers/Minute, km/minFeet/Second, ft/sec": "54.646 ft/sec", "Meters/Hour, m/hCentimeters/Second, cm/s": "0 m/s", "Feet/Minute, ft/minMeters/Hour, m/h": "18.214 m/h", "Sound (air), m/sMillimeters/Second, mm/s": "340,290 mm/s", "Feet/Second, ft/secMeters/Hour, m/h": "1,089.286 m/h", "Miles/Hour, mphCentimeters/Second, cm/s": "0.447 m/s", "Feet/Second, ft/secMach, Ma": "0.001 Ma", "Centimeters/Second, cm/sLight (vaccum), c": "0 c", "Kilometers/Hour, km/hrKnots, kn": "0.54 kn", "Meters/Hour, m/hMiles/Second, mil/s": "0 mil/s", "Light (vaccum), cMeters/Hour, m/h": "1,070,687,350,000 m/h", "Mach, MaSound (air), m/s": "1 m/s", "Inches/Second, in/sMiles/Minute, mil/min": "0.001 mil/min", "Centimeters/Second, cm/sKilometers/Second, km/s": "0.001 km/s", "Millimeters/Second, mm/sFeet/Second, ft/sec": "0.003 ft/sec", "Kilometers/Second, km/sMach, Ma": "2.939 Ma", "Centimeters/Second, cm/sMeters/Second, m/sec": "1 m/s", "Meters/Hour, m/hMillimeters/Second, mm/s": "0.28 mm/s", "Kilometers/Hour, km/hrMiles/Hour, mph": "0.621 mph", "Kilometers/Second, km/sMiles/Minute, mil/min": "37.283 mil/min", "Mach, MaMiles/Second, mil/s": "0.211 mil/s", "Inches/Second, in/sMiles/Hour, mph": "0.056 mph", "Knots, knKilometers/Second, km/s": "0.001 km/s", "Kilometers/Hour, km/hrFeet/Minute, ft/min": "54.466 ft/min", "Meters/Minute, m/minMiles/Minute, mil/min": "0.001 mil/min", "Sound (air), m/sKnots, kn": "661.471 kn", "Sound (air), m/sSound (air), m/s": "1 m/s", "Mach, MaMiles/Minute, mil/min": "12.687 mil/min"]

        
//            var jointdict : [String : UnitSpeed] = [:]
//
//            let keys1 = ["Centimeters/Second, cm/s", "Feet/Minute, ft/min", "Feet/Second, ft/sec", "Inches/Second, in/s", "Kilometers/Hour, km/hr",
//            "Kilometers/Minute, km/min", "Kilometers/Second, km/s", "Knots, kn", "Light (vaccum), c", "Mach, Ma",
//            "Meters/Hour, m/h", "Meters/Minute, m/min", "Meters/Second, m/sec", "Miles/Hour, mph", "Miles/Minute, mil/min", "Miles/Second, mil/s", "Millimeters/Second, mm/s", "Sound (air), m/s"]
//
//                let keys2 = ["Centimeters/Second, cm/s", "Feet/Minute, ft/min", "Feet/Second, ft/sec", "Inches/Second, in/s", "Kilometers/Hour, km/hr",
//                "Kilometers/Minute, km/min", "Kilometers/Second, km/s", "Knots, kn", "Light (vaccum), c", "Mach, Ma",
//                "Meters/Hour, m/h", "Meters/Minute, m/min", "Meters/Second, m/sec", "Miles/Hour, mph", "Miles/Minute, mil/min", "Miles/Second, mil/s", "Millimeters/Second, mm/s", "Sound (air), m/s"]
//
//
//
//                                               init () {
//
//                                                    for i in 1..<speedarray.count {
//                                                        jointdict[speedarray[i]] = array2[i]
//                                                    }
//
//
//                                                    let formatter = MeasurementFormatter()
//                                                    formatter.unitOptions = .providedUnit
//                                                    for itema in keys1 {
//                                                        for itemb in keys2 {
//                                                            let itemc = itema + itemb
//                                                            let val1 = Measurement(value: 1.0 , unit: jointdict[itema] ?? UnitSpeed.metersPerSecond)
//                                                            let val2 = val1.converted(to: jointdict[itemb] ?? UnitSpeed.metersPerSecond)
//                                                            let storeval =  formatter.string(from: val2)
//                                                            speeddict[itemc] = storeval
//                                                        }
//                                                    }
//
//                                                    print ("Final Dict ", speeddict)
//                                                }
        
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
                                    Text(self.DisplayUnit1 + "  "  + env.displayconvertspeed)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalSpeed(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                                                        Text(self.DisplayUnit2 + "  " + calc(env.displayconvertspeed, self.DisplayUnit1, self.DisplayUnit2))
//                                    Text(self.DisplayUnit2 + "  ")
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalSpeed(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
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

    
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
          let formatter = MeasurementFormatter()
          let stringval: String = unit1  +  unit2
          let storedval = (speeddict[stringval, default: "1"])
          let operand1 = (unit1val as NSString).doubleValue
          let operand2 = (storedval as NSString).doubleValue
          return String(operand1 * operand2)
          
      }
    
//    let speedarray =
//    ["Centimeters/Second, cm/s", "Feet/Minute, ft/min", "Feet/Second, ft/sec", "Inches/Second, in/s", "Kilometers/Hour, km/hr",
//     "Kilometers/Minute, km/min", "Kilometers/Second, km/s", "Knots, kn", "Light (vaccum), c", "Mach, Ma",
//     "Meters/Hour, m/h", "Meters/Minute, m/min", "Meters/Second, m/sec", "Miles/Hour, mph", "Miles/Minute, mil/min", "Miles/Second, mil/s", "Millimeters/Second, mm/s", "Sound (air), m/s"]
//
//    let array2 = [UnitSpeed.cmpersec, UnitSpeed.ftpermin, UnitSpeed.ftpersec, UnitSpeed.inchespersec, UnitSpeed.kilometersPerHour, UnitSpeed.kmpermin, UnitSpeed.kmpersec, UnitSpeed.knots, UnitSpeed.lightc, UnitSpeed.mach, UnitSpeed.metersperhour, UnitSpeed.meterspermin, UnitSpeed.metersPerSecond, UnitSpeed.milesPerHour, UnitSpeed.milespermin, UnitSpeed.milespersec, UnitSpeed.mmpersec, UnitSpeed.sound]

    
}

struct Speed_Previews: PreviewProvider {
    static var previews: some View {
        Speed()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}

extension UnitSpeed {
    static let cmpersec = UnitSpeed(symbol: "cm/s", converter: UnitConverterLinear(coefficient: 0.01))
    static let ftpermin = UnitSpeed(symbol: "ft/min", converter: UnitConverterLinear(coefficient: 0.0051))
    static let ftpersec = UnitSpeed(symbol: "ft/sec", converter: UnitConverterLinear(coefficient: 0.305))
    static let inchespersec = UnitSpeed(symbol: "in/s", converter: UnitConverterLinear(coefficient: 0.025))
    static let kmpermin = UnitSpeed(symbol: "km/min", converter: UnitConverterLinear(coefficient: 16.667))
    static let kmpersec = UnitSpeed(symbol: "km/s", converter: UnitConverterLinear(coefficient: 1000))
    static let lightc = UnitSpeed(symbol: "c", converter: UnitConverterLinear(coefficient: 299792458))
    static let mach = UnitSpeed(symbol: "Ma", converter: UnitConverterLinear(coefficient: 340.29))
    static let metersperhour = UnitSpeed(symbol: "m/h", converter: UnitConverterLinear(coefficient: 0.00028))
    static let meterspermin = UnitSpeed(symbol: "m/min", converter: UnitConverterLinear(coefficient: 0.017))
    static let milespermin = UnitSpeed(symbol: "mil/min", converter: UnitConverterLinear(coefficient: 26.822))
    static let milespersec = UnitSpeed(symbol: "mil/s", converter: UnitConverterLinear(coefficient: 1609.344))
    static let mmpersec = UnitSpeed(symbol: "mm/s", converter: UnitConverterLinear(coefficient: 0.001))
    static let sound = UnitSpeed(symbol: "m/s", converter: UnitConverterLinear(coefficient: 340.29))
    
}
