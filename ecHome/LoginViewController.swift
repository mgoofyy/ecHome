//
//  LoginViewController.swift
//  ecHome
//
//  Created by ecJon on 15/3/5.
//  Copyright (c) 2015年 ihat_studio. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController{


    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        var userName = UITextField()
        userName.frame = CGRect(x: self.sumWidth/5, y: self.sumHeight/2, width: self.sumWidth*3/5, height: 30)
        userName.backgroundColor = UIColor.blackColor()
        self.view.addSubview(userName)
        
        var passWord = UITextField()
        passWord.frame = CGRect(x: self.sumWidth/5, y: self.sumHeight/2+50, width: self.sumWidth*3/5, height: 30)
        passWord.backgroundColor = UIColor.blackColor()
        self.view.addSubview(passWord)
        
//        var loginButton = UIButton()
        loginButton.frame = CGRect(x: self.sumWidth*3/10, y: self.sumHeight/2+90, width: self.sumWidth/5, height: 30)
        loginButton.setTitle("登陆", forState: UIControlState.Normal)
        loginButton.addTarget(self, action: "login", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(loginButton)

 
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func login(){
    
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
