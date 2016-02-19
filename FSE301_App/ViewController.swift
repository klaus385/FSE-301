//
//  ViewController.swift
//  FSE301_App
//
//  Created by Ryan Decker on 2/17/16.
//  Copyright © 2016 Ryan Decker. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,  UIPickerViewDelegate{
    @IBOutlet weak var WindowsPicker: UIPickerView!
    @IBOutlet weak var MacPicker: UIPickerView!
    //@IBOutlet weak var selection: UITextField!
    
    var selection:String?
    
    var  p:pickerData = pickerData()

    override func viewDidLoad() {
        super.viewDidLoad()
        WindowsPicker.dataSource=self
        WindowsPicker.delegate=self
        MacPicker.dataSource=self
        MacPicker.delegate=self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // number of columns in the pickerview
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // number of elemens
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //return p.getCount()
        if(pickerView == self.WindowsPicker){
            return p.getCount()
        }
        else{
            return p.getCountMac()
        }
    }
    
    // populate each row
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        //return p.getData(row)
        if(pickerView == self.WindowsPicker){
            return p.getData(row)
        }
        else{
            return p.getDataMac(row)
        }
    }
    
    
    // what happens when an item is selected from the picker view
    // this is a delegate method
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(pickerView == self.WindowsPicker){
            if(row == 0)
            {
                //self.selection.text = "XP"
                selection = "Windows XP"
            }
            else if(row == 1)
            {
                //self.selection.text = "Vista"
                selection = "Windows Vista"
            }
            else if(row == 2)
            {
                //self.selection.text = "Windows 7"
                selection = "Windows 7"
            }
            else if(row == 3)
            {
                //self.selection.text = "Windows 8"
                selection = "Windows 8"
            }
            else if(row == 4)
            {
                //self.selection.text = "Windows 10"
                selection = "Windows 10"
            }
        }
        else{
            if(row == 0)
            {
                //self.selection.text = "OS X 10.7 Lion"
                selection = "OS X 10.7 Lion"
            }
            else if(row == 1)
            {
                //self.selection.text = "OS X 10.8 Mountain Lion"
                selection = "OS X 10.8 Mountain Lion"
            }
            else if(row == 2)
            {
                //self.selection.text = "OS X 10.9 Mavericks"
                selection = "OS X 10.9 Mavericks"
            }
            else if(row == 3)
            {
                //self.selection.text = "OS X 10.10 Yosemite"
                selection = "OS X 10.10 Yosemite"
            }
            else if(row == 4)
            {
                //self.selection.text = "OS X 10.11 El Capitan"
                selection = "OS X 10.11 El Capitan"
            }
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "first"
        {
            if let detailviewController: ViewController2 = segue.destinationViewController as? ViewController2{
                detailviewController.fromFirstView = selection;
            }
        }
    }
}

