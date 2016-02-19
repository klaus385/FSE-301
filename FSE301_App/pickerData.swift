//
//  PickerData.swift
//  FSE301_App
//
//  Created by Ryan Decker on 2/17/16.
//  Copyright © 2016 Ryan Decker. All rights reserved.
//

import Foundation
class pickerData
{
    var pickerDataSourceWin = ["Windows XP","Windows Vista", "Windows 7", "Windows 8", "Windows 10"]
    
    var pickerDataSourceMac = ["OS X 10.7 Lion", "OS X 10.8 Mountain Lion", "OS X 10.9 Mavericks", "OS X 10.10 Yosemite", "OS X 10.11 El Capitan"]
    
    func getCount()-> Int
    {
        return pickerDataSourceWin.count
    }
    
    func getData(row: Int) -> String
    {
        return pickerDataSourceWin[row]
    }
    func getCountMac()-> Int
    {
        return pickerDataSourceMac.count
    }
    
    func getDataMac(row: Int) -> String
    {
        return pickerDataSourceMac[row]
    }
}