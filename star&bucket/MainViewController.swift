//
//  MainViewController.swift
//  Star&Bucket
//
//  Created by soo.hyun on 2016. 7. 18..
//  Copyright © 2016년 MoMo. All rights reserved.
//

import UIKit


class MainViewController: UIViewController {
    
    private var isStatusBarEnabled: Bool = true
    
    //MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let screenSize: CGRect = UIScreen.mainScreen().bounds
//        let view = LaunchScreenView(frame: CGRectMake(0, 0, screenSize.width, screenSize.height))
//        self.view.addSubview(view)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.barHidden(true)
        self.updateStatusBarStatus(false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return !isStatusBarEnabled
    }
    
    
    //MARK: - private methods
    
    private func barHidden(hidden: Bool) {
        if hidden == true {
            self.navigationController?.navigationBarHidden = true
        }
        else {
            self.navigationController?.navigationBarHidden = false
        }
    }
    
    private func updateStatusBarStatus(enabled: Bool) {
        isStatusBarEnabled = enabled
        self.setNeedsStatusBarAppearanceUpdate()
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
