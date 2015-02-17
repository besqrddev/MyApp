//
//  DetailScreen.swift
//  MyApp
//
//  Created by Luppy on 15/2/15.
//  Copyright (c) 2015 Lee Lup Yuen. All rights reserved.
//

import UIKit

class DetailScreen: UIViewController {

    @IBOutlet weak var textfield1: UITextView!
    @IBOutlet weak var labe1: UILabel!
    @IBOutlet weak var image1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        labe1.text = "Product A"
        textfield1.text = "This is a great product"
        let url = NSURL(string: "http://www.healthguru.sg/wp-content/uploads/2012/07/4._nestle-milo-tin-400g.jpg")
        var imageData =  NSData(contentsOfURL: url!)
        image1.image = UIImage(data: imageData! as NSData)
        
        
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
