//
//  ViewController3.swift
//  FSE 301 V3
//
//  Created by Ryan Decker on 3/12/16.
//  Copyright © 2016 Ryan Decker. All rights reserved.
//

import UIKit

class ViewController3: UIViewController, UITableViewDelegate, UITableViewDataSource, CustomCellDelegate{
    
    @IBOutlet weak var modelSelected: UILabel!
    @IBOutlet weak var OSSelected: UILabel!
    @IBOutlet weak var problemTable: UITableView!
    
    //Mark Variables
    var chosenCellIndex = 0
    var cellDescriptors: NSMutableArray!
    var visibleRowsPerSection = [[Int]]()
    
    var selectedModelPassed:String!
    var selectedOSPassed:String!
    
    var selectedProblem:String!
    var selectedLabel:String!
    
    //var index = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        self.modelSelected.text = selectedModelPassed
        self.OSSelected.text = selectedOSPassed
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        configureTableView()
        
        loadCellDescriptors()
        print(cellDescriptors)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureTableView() {
        problemTable.delegate = self
        problemTable.dataSource = self
        problemTable.tableFooterView = UIView(frame: CGRectZero)
        
        problemTable.registerNib(UINib(nibName: "MakeCell", bundle: nil), forCellReuseIdentifier: "idCellNormal")
        problemTable.registerNib(UINib(nibName: "ModelCell", bundle: nil), forCellReuseIdentifier: "idCellValuePicker")
    }
    
    func loadCellDescriptors() {
        if let path = NSBundle.mainBundle().pathForResource("SolutionTable", ofType: "plist") {
            cellDescriptors = NSMutableArray(contentsOfFile: path)
            getIndicesOfVisibleRows()
            problemTable.reloadData()
        }
    }
    
    func getIndicesOfVisibleRows() {
        visibleRowsPerSection.removeAll()
        
        for currentSectionCells in cellDescriptors {
            var visibleRows = [Int]()
            
            for row in 0...((currentSectionCells as! [[String: AnyObject]]).count - 1) {
                if currentSectionCells[row]["isVisible"] as! Bool == true {
                    visibleRows.append(row)
                }
            }
            
            visibleRowsPerSection.append(visibleRows)
        }
    }
    
    func getCellDescriptorForIndexPath(indexPath: NSIndexPath) -> [String: AnyObject] {
        let indexOfVisibleRow = visibleRowsPerSection[indexPath.section][indexPath.row]
        let cellDescriptor = cellDescriptors[indexPath.section][indexOfVisibleRow] as! [String: AnyObject]
        return cellDescriptor
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        if cellDescriptors != nil {
            return cellDescriptors.count
        }
        else {
            return 0
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return visibleRowsPerSection[section].count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Hardware Related Issues:"
            
        default:
            return "Software Related Issues: "
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let currentCellDescriptor = getCellDescriptorForIndexPath(indexPath)
        let cell = tableView.dequeueReusableCellWithIdentifier(currentCellDescriptor["cellIdentifier"] as! String, forIndexPath: indexPath) as! CustomCell
        
        
        if (currentCellDescriptor["cellIdentifier"] as! String == "idCellNormal"){
            
            if let secondaryTitle = currentCellDescriptor["secondaryTitle"] {
                cell.detailTextLabel?.text = secondaryTitle as? String
            }
        }
        else if (currentCellDescriptor["cellIdentifier"] as! String == "idCellValuePicker"){
            cell.textLabel?.text = currentCellDescriptor["secondaryTitle"] as? String
        }
        
        cell.delegate = self
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let currentCellDescriptor = getCellDescriptorForIndexPath(indexPath)
        
        switch currentCellDescriptor["cellIdentifier"] as! String {
        case "idCellNormal":
            return 60.0
            
        default:
            return 44.0
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let indexOfTappedRow = visibleRowsPerSection[indexPath.section][indexPath.row]
        
        if cellDescriptors[indexPath.section][indexOfTappedRow]["isExpandable"] as! Bool == true {
            var shouldExpandAndShowSubRows = false
            if cellDescriptors[indexPath.section][indexOfTappedRow]["isExpanded"] as! Bool == false {
                // In this case the cell should expand.
                shouldExpandAndShowSubRows = true
            }
            
            cellDescriptors[indexPath.section][indexOfTappedRow].setValue(shouldExpandAndShowSubRows, forKey: "isExpanded")
            
            for i in (indexOfTappedRow + 1)...(indexOfTappedRow + (cellDescriptors[indexPath.section][indexOfTappedRow]["additionalRows"] as! Int)) {
                cellDescriptors[indexPath.section][i].setValue(shouldExpandAndShowSubRows, forKey: "isVisible")
            }
            
            chosenCellIndex = indexPath.row
        }
        else {
            if cellDescriptors[indexPath.section][indexOfTappedRow]["cellIdentifier"] as! String == "idCellValuePicker" {
                var indexOfParentCell: Int!
                
                for var i=indexOfTappedRow - 1; i>=0; --i {
                    if cellDescriptors[indexPath.section][i]["isExpandable"] as! Bool == true {
                        indexOfParentCell = i
                        break
                    }
                }
                
                cellDescriptors[indexPath.section][indexOfParentCell].setValue((problemTable.cellForRowAtIndexPath(indexPath) as! CustomCell).textLabel?.text, forKey: "primaryTitle")
                cellDescriptors[indexPath.section][indexOfParentCell].setValue(false, forKey: "isExpanded")
                
                for i in (indexOfParentCell + 1)...(indexOfParentCell + (cellDescriptors[indexPath.section][indexOfParentCell]["additionalRows"] as! Int)) {
                    cellDescriptors[indexPath.section][i].setValue(false, forKey: "isVisible")
                }
            }
            chosenCellIndex = indexPath.row
            let currentCell = problemTable.cellForRowAtIndexPath(indexPath)! as UITableViewCell
            
            selectedLabel = currentCell.textLabel!.text
            
            // Start segue with index of cell clicked
            self.performSegueWithIdentifier("toSolution", sender: self)
            
        }
        
        getIndicesOfVisibleRows()
        problemTable.reloadSections(NSIndexSet(index: indexPath.section), withRowAnimation: UITableViewRowAnimation.Fade)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier == "toSolution") {
            
            let vc = segue.destinationViewController as! ViewController4
            vc.problemPassed = selectedLabel
            let vc2 = segue.destinationViewController as! ViewController4
            vc2.selectedModel = selectedModelPassed
            let vc3 = segue.destinationViewController as! ViewController4
            vc3.selectedOS = selectedOSPassed
            
        }
        
    }

    /*
    @IBAction func segControl(sender: UISegmentedControl) {
        switch (sender.selectedSegmentIndex) {
            case 0:
            print("hardware")
            //index = 1
            //print(index)
            
            default:
            print("software")
            //index = 2
            //print(index)
        }
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
