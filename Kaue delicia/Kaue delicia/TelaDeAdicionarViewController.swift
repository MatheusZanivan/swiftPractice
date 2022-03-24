//
//  TelaDeAdicionarViewController.swift
//  Kaue delicia
//
//  Created by Matheus Zanivan on 16/03/22.
//

import UIKit

class TelaDeAdicionarViewController: UIViewController {
    
    @IBOutlet weak var nomeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nomeView.backgroundColor = .cyan
        nomeView.layer.cornerRadius = 15
        nomeView.layer.masksToBounds = true
        self.title = "Teste"
        //self.navigationItem.title = "teste
        // Do any additional setup after loading the view.
    }
    

    @IBAction func cancelar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
