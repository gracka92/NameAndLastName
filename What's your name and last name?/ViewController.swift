//
//  ViewController.swift
//  What's your name and last name?
//
//  Created by Gracjana Leonowicz on 07.08.2017.
//  Copyright © 2017 Gracjana Leonowicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        UserDefaults.standard.set(nameField.text, forKey: "name")
        UserDefaults.standard.set(lastNameField.text, forKey: "lastName")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let nameObject = UserDefaults.standard.object(forKey: "name")
        if let name = nameObject as? String{
            nameField.text = name
        }
        
        
        let lastNameObject = UserDefaults.standard.object(forKey: "lastName")
        if let lastName = lastNameObject as? String {
            lastNameField.text = lastName
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

