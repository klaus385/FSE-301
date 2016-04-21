//
//  ViewController4.swift
//  FSE 301 V3
//
//  Created by Ryan Decker on 3/13/16.
//  Copyright © 2016 Ryan Decker. All rights reserved.
//

import UIKit

class ViewController4: UIViewController, UIWebViewDelegate{
    @IBOutlet weak var problemSelected: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    var problemPassed: String!
    var selectedModel:String!
    var selectedOS:String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.problemSelected.text! = problemPassed
        
        print(selectedModel)
        print(selectedOS)
        
        if((problemPassed == "Unable to connect to WiFi") && ((selectedOS == "Windows XP") || (selectedOS == "Windows Vista") || (selectedOS == "Windows 7") || (selectedOS == "Windows 8") || (selectedOS == "Windows 10"))){
            self.textView.text = "Method 1: Reboot Wireless router \n\nMethod 2: Perform Diagnostic Repair \n\nMethod 3: Delete and re-add the Wireless Network \n\nMethod 4: Alter Power Management profile \n\nMethod 5: Check settings on your wireless router \n\nMethod 6: Reinstall Network Adaptor Driver\n \nMethod 7: Reset TCP/IP stack \n\nBelow is a link to a tutorial webpage on how to troubleshoot WiFi connectivity issues in full detail."
        }
        else if((problemPassed == "Unable to connect to WiFi") && ((selectedOS == "OS X 10.7 Lion") || (selectedOS == "OS X 10.8 Mountain Lion") || (selectedOS == "OS X 10.9 Mavericks") || (selectedOS == "OS X 10.10 Yosemite") || (selectedOS == "OS X 10.11 El Capitan"))){
            self.textView.text = "Step 1: Try another site or app \n\nStep2: Use Network Diagnostics \n\nStep 3: Nudge Wi-Fi back to life \n\nStep 4: Try another device \n\nStep 5: Reset your router \n\nStep 6: Check your DNS settings\n \nBelow is a link to a tutorial webpage on how to troubleshoot WiFi connectivity issues on your Mac in full detail."
        }

        
        if((problemPassed == "Steps to recover data") && ((selectedOS == "Windows XP") || (selectedOS == "Windows Vista") || (selectedOS == "Windows 7") || (selectedOS == "Windows 8") || (selectedOS == "Windows 10"))){
            self.textView.text = "1. Check the Recycle Bin: \nYou’ll find the icon in the upper-left corner of your screen. if you find the files there, select them, right-click them, and choose Restore. \n \n2. Use your backup Software: \n \n3. Try file recovery software: \nA good recovery software to use is Recuva, and it's free! \n \n4. Hire a Professional: \nIf all else fails hire a professional \n \nBelow is a link to a tutorial webpage on data recovery."
        }
        else if((problemPassed == "Steps to recover data") && ((selectedOS == "OS X 10.7 Lion") || (selectedOS == "OS X 10.8 Mountain Lion") || (selectedOS == "OS X 10.9 Mavericks") || (selectedOS == "OS X 10.10 Yosemite") || (selectedOS == "OS X 10.11 El Capitan"))){
            self.textView.text = "Restore from a Time Machine backup \n\n1. Choose Enter Time Machine from the Time Machine menu Time Machine icon, or click Time Machine in the Dock. \n\n2. Find the files to restore: \n\n3. Click Restore to restore the selected file, or Control-click the file for other options.\n\nBelow is a link to a tutorial webpage on data recovery."
        }
        
        if((problemPassed == "Computer running slow?") && ((selectedOS == "Windows XP") || (selectedOS == "Windows Vista"))){
            self.textView.text = "1. Look for performance draining processes: \nTo find out, right-click the taskbar and select Start Task Manager. Click the Processes tab, then the CPU column header. The top items will be the ones hogging the CPU. \n \n2. Clean up startup services: \nIn Windows XP, Vista, or 7, click Start (Start>Run in XP), type msconfig, and press ENTER. Once System Configuration comes up, click the Startup tab. You can disable items by unchecking them. \n\n3. Check for Maleware: \nA Try Malewarebytes, it's free! \n \n4. Do less multitasking: \n \nBelow is a link to a tutorial webpage on the tuneup process."
        }
        else if((problemPassed == "Computer running slow?") && (selectedOS == "Windows 7")){
            self.textView.text = "1. Look for performance draining processes: \nTo find out, right-click the taskbar and select Start Task Manager. Click the Processes tab, then the CPU column header. The top items will be the ones hogging the CPU. \n \n2. Clean up startup services: \nIn Windows XP, Vista, or 7, click Start (Start>Run in XP), type msconfig, and press ENTER. Once System Configuration comes up, click the Startup tab. You can disable items by unchecking them. \n\n3. Check for Maleware: \nA Try Malewarebytes, it's free! \n \n4. Do less multitasking: \n \n5. Turn off Aero: \n\n\nBelow is a link to a tutorial webpage on the tuneup process."
        }

        else if((problemPassed == "Computer running slow?") && ((selectedOS == "Windows 8") || (selectedOS == "Windows 10"))){
            self.textView.text = "1. Look for performance draining processes: \nTo find out, right-click the taskbar and select Start Task Manager. Click the Processes tab, then the CPU column header. The top items will be the ones hogging the CPU. \n \n2. Clean up startup services: \nIf you're using Windows 8 or 10, right-click the taskbar and select Start Task Manager. If you see a Startup tab, click it. If you don't, click More details, then Startup. To disable an item, right-click it and select Disable. \n\n3. Check for Maleware: \nA Try Malewarebytes, it's free! \n \n4. Do less multitasking: \n\n 5. Remove unnecessary files using CCleaner:\nGo to 'http://download.cnet.com/ccleaner/' then run scan after install \n \n \nBelow is a link to a tutorial webpage on the tuneup process."
        }
        else if((problemPassed == "Computer running slow?") && ((selectedOS == "OS X 10.7 Lion") || (selectedOS == "OS X 10.8 Mountain Lion") || (selectedOS == "OS X 10.9 Mavericks") || (selectedOS == "OS X 10.10 Yosemite") || (selectedOS == "OS X 10.11 El Capitan"))){
            self.textView.text = "Step 1: Run Software Update \n\nStep 2:Ensure you have enough Free Hard Drive Space \n\nStep3: Run Disk Utility (Applications->Utilities) to Verify/Repair Permissions \n\nStep 4: Clear away excess Desktop Items \n\nStep 5: Run a Virus Scan \n\nStep 6: Defragment the drive \n\nStep 7: Backup your data!!! \n\n -Use Time Machine to backup your Mac. \n\n\nBelow is a link to a tutorial webpage on the tuneup process."
        }
        
        if((problemPassed == "Steps to remove Maleware") && ((selectedOS == "Windows XP") || (selectedOS == "Windows Vista") || (selectedOS == "Windows 7") || (selectedOS == "Windows 8") || (selectedOS == "Windows 10"))){
            self.textView.text = "The best thign to do in the case that you have a virus in to install and run Malewarebytes. It is highly effective and free! But if this does not work...try these steps. \n\n1. Verify the infection\n\n2. Check for sure signs of malware\n\n3. Check online for possible fixes\n\n4. Assume that your old virus scanner is compromised\n\n5. Use a lightweight scanner inside Safe Mode: \nsuch as ESET Online Scanner, Malewarebytes or Trend Micro HouseCall\n\n6. Remember: The second scan's the charm\n\n7. Look to Linux as your last line of defense\n\n8. Lastly protect your newly disinfected PC\n\n\nBelow is a link to a tutorial webpage on removing Maleware."
        }
        else if((problemPassed == "Steps to remove Maleware") && ((selectedOS == "OS X 10.7 Lion") || (selectedOS == "OS X 10.8 Mountain Lion") || (selectedOS == "OS X 10.9 Mavericks") || (selectedOS == "OS X 10.10 Yosemite") || (selectedOS == "OS X 10.11 El Capitan"))){
            self.textView.text = "Step 1: Remove adware and browser hijackers from Safari, Google Chrome and Firefox \n\n Step 2: Remove adware with Malwarebytes Anti-Malware for Mac \n\n\nBelow is a link to a tutorial webpage on removing Maleware from your Mac."
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func openSafari(sender: UIButton) {
        
        var address: String!
        
        if((problemPassed == "Steps to recover data") && ((selectedOS == "Windows XP") || (selectedOS == "Windows Vista") || (selectedOS == "Windows 7") || (selectedOS == "Windows 8") || (selectedOS == "Windows 10"))){
            address = "http://www.pcworld.com/article/2147668/how-to-recover-deleted-files.html"
        }
        else if((problemPassed == "Computer running slow?") && ((selectedOS == "Windows XP") || (selectedOS == "Windows Vista") || (selectedOS == "Windows 7") || (selectedOS == "Windows 8") || (selectedOS == "Windows 10"))){
            address = "http://www.pcworld.com/article/2058086/speed-up-a-slow-pc-without-buying-new-hardware.html"
        }
        else if((problemPassed == "Steps to remove Maleware") && ((selectedOS == "Windows XP") || (selectedOS == "Windows Vista") || (selectedOS == "Windows 7") || (selectedOS == "Windows 8") || (selectedOS == "Windows 10"))){
            address = "http://www.pcworld.com/article/2039995/when-malware-strikes-how-to-clean-an-infected-pc.html"
        }
        else if((problemPassed == "Unable to connect to WiFi") && ((selectedOS == "Windows XP") || (selectedOS == "Windows Vista") || (selectedOS == "Windows 7") || (selectedOS == "Windows 8") || (selectedOS == "Windows 10"))){
            address = "https://www.maketecheasier.com/troubleshoot-wifi-connection/"
        }
        else if((problemPassed == "Unable to connect to WiFi") && ((selectedOS == "OS X 10.7 Lion") || (selectedOS == "OS X 10.8 Mountain Lion") || (selectedOS == "OS X 10.9 Mavericks") || (selectedOS == "OS X 10.10 Yosemite") || (selectedOS == "OS X 10.11 El Capitan"))){
            address = "http://www.macworld.com/article/2028982/mac-troubleshooting-what-to-do-when-you-cant-connect-to-the-internet.html"
        }
        else if((problemPassed == "Steps to remove Maleware") && ((selectedOS == "OS X 10.7 Lion") || (selectedOS == "OS X 10.8 Mountain Lion") || (selectedOS == "OS X 10.9 Mavericks") || (selectedOS == "OS X 10.10 Yosemite") || (selectedOS == "OS X 10.11 El Capitan"))){
            address = "https://malwaretips.com/blogs/remove-mac-os-x-virus/"
        }
        else if((problemPassed == "Steps to recover data") && ((selectedOS == "OS X 10.7 Lion") || (selectedOS == "OS X 10.8 Mountain Lion") || (selectedOS == "OS X 10.9 Mavericks") || (selectedOS == "OS X 10.10 Yosemite") || (selectedOS == "OS X 10.11 El Capitan"))){
            address = "https://support.apple.com/en-us/HT201250"
        }
        else if((problemPassed == "Computer running slow?") && ((selectedOS == "OS X 10.7 Lion") || (selectedOS == "OS X 10.8 Mountain Lion") || (selectedOS == "OS X 10.9 Mavericks") || (selectedOS == "OS X 10.10 Yosemite") || (selectedOS == "OS X 10.11 El Capitan"))){
            address = "https://www.fortlewis.edu/it/HowDoIandFAQ/ComputerRunningSlow/ComputerTuneUpMacintosh.aspx"
        }
        else{
            address = "http://www.google.com"
        }
        let url = NSURL(string: address)
        UIApplication.sharedApplication().openURL(url!)
    }

    @IBAction func rateApp(sender: UIButton) {
        let url = NSURL(string: "https://docs.google.com/forms/d/1XNO5kDx2ZCdwk8PS_BK4L6PteTzVWFkBsj__pDheP0o/viewform?c=0&w=1&usp=mail_form_link")
        UIApplication.sharedApplication().openURL(url!)
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
