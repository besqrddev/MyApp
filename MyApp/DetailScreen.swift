//
//  DetailScreen.swift
//  MyApp
//
//  Created by Luppy on 15/2/15.
//  Copyright (c) 2015 Lee Lup Yuen. All rights reserved.
//

import UIKit

class DetailScreen: UIViewController {

    var objectId : String!
    @IBOutlet weak var textfield1: UITextView!
    @IBOutlet weak var labe1: UILabel!
    @IBOutlet weak var image1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var query = PFQuery(className:"Product")
        query.getObjectInBackgroundWithId(objectId) {
            (product: PFObject!, error: NSError!) -> Void in
            if error == nil {
                NSLog("%@", product)
                self.labe1.text = product["Name"] as String
                self.textfield1.text = product["Review"] as String
                let url = NSURL(string: product["Image"] as String)
                var imageData =  NSData(contentsOfURL: url!)
                self.image1.image = UIImage(data: imageData! as NSData)
                
            } else {
                NSLog("%@", error)
            }
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
