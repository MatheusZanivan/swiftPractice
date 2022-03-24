//
//  EntryViewController.swift
//  toDoList
//
//  Created by Matheus Zanivan on 16/03/22.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var field : UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask()
        
        return true
    }
    
    @IBAction func saveTask(){
        
    }
    

    

}
