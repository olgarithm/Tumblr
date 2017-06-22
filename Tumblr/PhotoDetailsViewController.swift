//
//  PhotoDetailsViewController.swift
//  Tumblr
//
//  Created by Olga Andreeva on 6/22/17.
//  Copyright © 2017 Rey Oliva. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {

    @IBOutlet weak var imageCaption: UILabel!
    @IBOutlet weak var detailedImageView: UIImageView!
    var postArr: [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let photos = postArr?["photos"] as? [[String: Any]] {
            let photo = photos[0]
            let originalSize = photo["original_size"] as! [String: Any]
            let urlString = originalSize["url"] as! String
            let url = URL(string: urlString)
            detailedImageView.af_setImage(withURL: url!)
        }
        
        let caption = postArr?["caption"] as! String
        imageCaption.text = caption

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
