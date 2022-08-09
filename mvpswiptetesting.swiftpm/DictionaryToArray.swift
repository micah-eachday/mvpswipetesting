//
//  File.swift
//  mvpswiptetesting
//
//  Created by ec2-user on 8/8/22.
//

import Foundation
import SwiftUI

struct DoInfo {
    
    
    @State var myDict: [Int: String] = [
        4: "value for key\'4\'",
        7: "value for key\'7\'",
        1: "value for key\'1\'",
        9: "value for key\'9\'",
        6: "value for key\'6\'",
        3: "value for key\'3\'",
        5: "value for key\'5\'",
        8: "value for key\'8\'",
        2: "value for key\'4\'"
    ]
}

struct DictionaryToArrayView: View {
    var body: some View {
        ScrollView {
            Button {
                let myDict: [Int: String] = [
                    4: "value for key\'4\'",
                    7: "value for key\'7\'",
                    1: "value for key\'1\'",
                    9: "value for key\'9\'",
                    6: "value for key\'6\'",
                    3: "value for key\'3\'",
                    5: "value for key\'5\'",
                    8: "value for key\'8\'",
                    2: "value for key\'4\'"
                ]
                let dictKeys: [Int] = Array(myDict.keys)
                print(dictKeys)
                let sortedKeys = dictKeys.sorted()
                print(sortedKeys)
                sortedKeys.forEach {
                    key in
                    print((myDict[key] ?? "") as String)
                }
                //dictKeys.sort()
                //print(dictKeys)
                /*let dictKeys = DoInfo.myDict.keys
                print(dictKeys)*/
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 20, height: 20)
                    .padding()
            }

        }
    }
}
