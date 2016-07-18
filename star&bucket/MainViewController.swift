//
//  MainViewController.swift
//  Star&Bucket
//
//  Created by soo.hyun on 2016. 7. 18..
//  Copyright © 2016년 MoMo. All rights reserved.
//

import UIKit


class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let screenSize: CGRect = UIScreen.mainScreen().bounds
//        let view = LaunchScreenView(frame: CGRectMake(0, 0, screenSize.width, screenSize.height))
//        self.view.addSubview(view)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.barHidden(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: - private methods
    private func barHidden(hidden: Bool) {
        if hidden == true {
            self.navigationController?.navigationBarHidden = true
            print("come first")
        }
        else {
            self.navigationController?.navigationBarHidden = false
        }
    }
    
    private func statusHidden(hidden: Bool) {
        if hidden == true {
            UIApplication.sharedApplication().statusBarHidden = true
            print("come second")
        }
        else {
            UIApplication.sharedApplication().statusBarHidden = false
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
