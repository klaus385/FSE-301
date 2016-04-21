//
//  ViewController2.swift
//  FSE 301 V3
//
//  Created by Ryan Decker on 3/11/16.
//  Copyright © 2016 Ryan Decker. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var OSSelection: UIPickerView!
    @IBOutlet weak var modelImage: UIImageView!
    @IBOutlet weak var modelName: UILabel!
    
    var modelPassed:String!
    var selection:String?
    //var selectedModel:String!
    //var modelImagePassed: String?
    
    var pickerData: [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        //self.modelName.text = modelPassed
        //modelImage.image = UIImage(named: "imac.jpg")
        
        // Do any additional setup after loading the view.
        
        //connect the data
        OSSelection.delegate = self
        OSSelection.dataSource = self
        
        //add picker data
        //if apple device
        if( modelPassed == "iMac Series" || modelPassed == "Mac Pro Series" || modelPassed == "Macbook Series" || modelPassed == "Macbook Air Series" || modelPassed == "Macbook Pro Series"){
            pickerData = ["OS X 10.7 Lion", "OS X 10.8 Mountain Lion", "OS X 10.9 Mavericks", "OS X 10.10 Yosemite", "OS X 10.11 El Capitan", "Not Sure?"]
            if(modelPassed == "iMac Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "imac.jpg")
                selection = "OS X 10.7 Lion"
            }
            else if(modelPassed == "Mac Pro Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "macpro.jpg")
                selection = "OS X 10.7 Lion"
            }
            else if(modelPassed == "Macbook Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "macbook.jpg")
                selection = "OS X 10.7 Lion"
            }
            else if(modelPassed == "Macbook Air Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "macbookAir.jpg")
                selection = "OS X 10.7 Lion"
            }
            else if(modelPassed == "Macbook Pro Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "macbookPro.jpg")
                selection = "OS X 10.7 Lion"
            }
        }
        //if windows device
        else{
            pickerData = ["Windows XP", "Windows Vista", "Windows 7", "Windows 8", "Windows 10", "Not Sure?"]
            
            if(modelPassed == "ROG GL752VW"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "ROG GL752VW.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "N550JK"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "N550JK.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "M32AD"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "M32AD.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "ROG G20BM"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "ROG G20BM.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "All-In-One Inspiron 3000"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "all-In-One Inspiron 3000.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "All-In-One Inspiron 5000"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "all-In-One Inspiron 5000.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "All-In-One Inspiron 7000"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "all-In-One Inspiron 7000.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "XPS 12"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "xps 12.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "XPS 13"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "xps 13.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "XPS 15"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "xps 15.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "XPS 8900"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "xps 8900.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "XPS 27"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "XPS 27.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "Envy Notebook Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "Envy Notebook Series.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "Omen Notebook Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "Omen Notebook Series.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "Pavillion Gaming Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "Pavillion Gaming Series.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "Envy 750 XT Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "ENVY 750 XT Series.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "Envy 850 SE Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "ENVY 850 SE Series.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "Thinkstation P900 Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "Thinkstation P900 Series.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "Thinkstation P700 Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "Thinkstation P700 Series.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "Thinkstation P500 Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "Thinkstation P500 Series.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "T460 Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "T460 Series.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "E560 Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "E560 Series.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "Satellite Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "Satellite Series.jpg")
                selection = "Windows XP"
            }
            else if(modelPassed == "Radius Series"){
                self.modelName.text = modelPassed
                modelImage.image = UIImage(named: "Radius Series.jpg")
                selection = "Windows XP"
            }
        }
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
        return pickerData.count
    }
    
    // populate each row
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    // what happens when an item is selected from the picker view
    // this is a delegate method
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if((modelPassed == "iMac Series" || modelPassed == "Mac Pro Series" || modelPassed == "Macbook Series" || modelPassed == "Macbook Air Series" || modelPassed == "Macbook Pro Series")){
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
            else if(row == 5){
                selection = "OS X 10.11 El Capitan"
            }
        }
        else{
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
            else if(row == 5){
                selection = "Windows 7"
            }
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier == "solutionView") {
            
            let vc = segue.destinationViewController as! ViewController3
            vc.selectedModelPassed = modelPassed
            let vc2 = segue.destinationViewController as! ViewController3
            vc2.selectedOSPassed = selection
            
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
