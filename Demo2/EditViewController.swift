//
//  EditViewController.swift
//  Demo2
//
//  Created by Chi-Che Hsieh on 2018/7/19.
//  Copyright © 2018年 ppquitmax. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var infoText: UITextField!
    
    var member:Member?
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(member ?? "123")
        nameText.text = member?.name
        infoText.text = member?.info
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
        member?.name = nameText.text!
        member?.info = infoText.text!
    }
}
