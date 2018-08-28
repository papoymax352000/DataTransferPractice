//
//  InfoViewController.swift
//  Demo2
//
//  Created by Chi-Che Hsieh on 2018/7/19.
//  Copyright © 2018年 ppquitmax. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    @IBOutlet weak var myNavigationItem: UINavigationItem!
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
    
    var member:Member?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myNavigationItem.title = member?.name
        photoImage.image = UIImage(named: (member?.imageName)!)
        infoLabel.text = member?.info

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /**/
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let controller = segue.destination as? EditViewController {
            controller.member = member
        }
    }
}
