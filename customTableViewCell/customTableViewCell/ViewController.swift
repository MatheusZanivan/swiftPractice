//
//  ViewController.swift
//  customTableViewCell
//
//  Created by Matheus Zanivan on 24/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let informacao = ["Primeiro", "Segundo", "Terceiro","Quarto","Quinto"]
    
    @IBOutlet var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib =  UINib(nibName: "customTableViewCell", bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: "customTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return informacao.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customTableViewCell", for: indexPath) as! customTableViewCell
        cell.textLabel?.text = informacao[indexPath.row]
        cell.myLabel.text = informacao[indexPath.row]
        cell.myImage.backgroundColor = .gray
        return cell
    }

}

