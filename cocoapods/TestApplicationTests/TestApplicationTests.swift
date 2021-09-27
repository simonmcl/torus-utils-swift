//
//  TestApplicationTests.swift
//  TestApplicationTests
//
//  Created by Shubham on 27/5/20.
//  Copyright © 2020 torus. All rights reserved.
//

import XCTest
import SWHttpTrafficRecorder
@testable import TestApplication
import TorusUtils
import FetchNodeDetails
import Bagel

let nodePubKeys: [TorusNodePub] = [
    TorusNodePub(_X: "8770041116892273420212514363816888648743243839481803541000124525420183696835", _Y: "97471513281473193096279880986416173686387756005515032749571363807206972226750"),
    TorusNodePub(_X: "56335512367799130197319052932220499344820148458935861180948775483014018695837", _Y: "81122910237569739841637466418170484041158294009750538378931489117514520303158"),
    TorusNodePub(_X: "62656511992468090863693197565263681540760527883325416378668629142668947819119", _Y: "70948001406858309254305908999666419183897065740822913755771321685203655596177"),
    TorusNodePub(_X: "17035149873187790047215784913172117943738641782563375216763043104062667014044", _Y: "111377186153857425185437932296595407584540377083510284632528248660152328487497"),
    TorusNodePub(_X: "98167707795910891419456326677568144842407615315270052952727969076028872297626", _Y: "112836727246056869920552673614422920214095774154367005723529900789272923089102"),
]

let endPoints: [String] = [
    "https://teal-15-1.torusnode.com/jrpc",
    "https://teal-15-3.torusnode.com/jrpc",
    "https://teal-15-4.torusnode.com/jrpc",
    "https://teal-15-5.torusnode.com/jrpc",
    "https://teal-15-2.torusnode.com/jrpc",
]

class TestApplicationTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testGettingMockData() throws {
//        SWHttpTrafficRecorder.shared().startRecording()
        Bagel.start()
        let torusUtils = TorusUtils(nodePubKeys: nodePubKeys)
        torusUtils.keyLookup(endpoints: endPoints, verifier: "multigoogle-torus", verifierId: "michael@tor.us")
    }

}
