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
        println(self.sumHeight)
        var logoImage = UIImageView()
        logoImage.frame = CGRect(x: self.sumWidth/3, y: self.sumHeight/6, width: self.sumWidth/3, height: self.sumHeight/6)
        logoImage.image = UIImage(named: "logo.png")
        self.view.addSubview(logoImage)
        
        var userName = UITextField()
        userName.frame = CGRect(x: self.sumWidth/5, y: self.sumHeight/2, width: self.sumWidth*3/5, height: 30)
        userName.background = UIImage(named: "input.png")
        userName.placeholder = " 请输入用户名"
        self.view.addSubview(userName)
        
        var passWord = UITextField()
        passWord.frame = CGRect(x: self.sumWidth/5, y: self.sumHeight/2+50, width: self.sumWidth*3/5, height: 30)
        passWord.background = UIImage(named: "input.png")
        passWord.placeholder = " 请输入用户密码"
        self.view.addSubview(passWord)
        

        loginButton.frame = CGRect(x: self.sumWidth*3/10, y: self.sumHeight/2+90, width: self.sumWidth/5, height: 30)
        loginButton.setTitle("登陆", forState: UIControlState.Normal)
        loginButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        loginButton.addTarget(self, action:"butClick:",forControlEvents:.TouchUpInside)
        self.view.addSubview(loginButton)

        var test = TCPClient()
        test.testtcpclient()
    
 
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func butClick(sender: UIButton){
        self.performSegueWithIdentifier("login", sender: self)
    }
    
    @IBAction func logOut(segue: UIStoryboardSegue){
        
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
