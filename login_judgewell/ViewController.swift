//
//  ViewController.swift
//  login_judgewell
//
//  Created by JEphraim on 16/10/2019.
//  Copyright © 2019 JEphraim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties & Fields
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        loginBtn.layer.cornerRadius = 17
        username.setRoundedCorners()
        password.setRoundedCorners()
        username.stylePlaceholder("Username")
        password.stylePlaceholder("Password")
        username.withImage(UIImage(named: "username")!)
        password.withImage(UIImage(named: "passwd")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UITextField {
    
    //    set white rounded corners
    func setRoundedCorners(){
        super.layer.borderWidth = 1
        super.layer.cornerRadius = 20
        super.layer.borderColor = UIColor.white.cgColor
    }
    
    //    customize placeholder
    func stylePlaceholder(_ placeholder: String){
        self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSForegroundColorAttributeName: UIColor.white])
    }
    
    // add image to textfield
    func withImage(_ image: UIImage){
        let mainView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 40))
        mainView.image = image
        mainView.contentMode = .scaleAspectFit
        self.leftViewMode = .always
        self.leftView = mainView
    }
}
