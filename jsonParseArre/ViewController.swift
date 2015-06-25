//
//  ViewController.swift
//  jsonParseArre
//
//  Created by Dignitas Digital on 6/23/15.
//  Copyright (c) 2015 Dignitas Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
  var links : [TestData]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        
        links = [TestData]()
        let api = TestAPI()
        api.loadShots("http://bollyvideoz.com/iphone/alltrailers.php", completion: didLoadShots)

    }
    
    func didLoadShots(links: [TestData]) {
        self.links = links
        tableView.reloadData()
      // println(links.count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
   // println(links.count)
        return links.count
        
    }
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        let linksCell = links[indexPath.row] as TestData
        
      //  println(linksCell.name)
        
        if let linkLabel = cell.viewWithTag(1) as? UILabel {
           linkLabel.text = linksCell.movie
            println(linkLabel.text)
        }
      
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "detailView") {
            var vc = segue.destinationViewController as! TestDesc
            var myIndexPath : NSIndexPath = self.tableView.indexPathForSelectedRow()!
            let row = myIndexPath.row
            vc.FirstString = links[row].title!
        }
    }

    
}