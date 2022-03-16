//
//  ViewController.swift
//  notes
//
//  Created by Matheus Zanivan on 15/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    //tabela que mostra a lista de notas
    @IBOutlet var table:UITableView!
    //label que fala que nao tem notas quando o app abre
    @IBOutlet var label:UITableView!
    
    //array de tuplas que vai ter titulos para as notas e a nota
    var models : [(title: String, note: String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //titulo que aparece quando aparece quando abre o app
        title = "Notes"
        
        table.delegate = self
        table.dataSource = self
    }
    
    //aperta um botao para criar uma nova nota
    @IBAction func didTapNewNote(){
        
    }
    //Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: IndexPath)
        cell.textLabel?.text = models[indexPath.row].title
        cell.detailTextLabel?.text = models[indexPath.row].note
        
        return cell
    }
    
    func tableViewDidEndMultipleSelectionInteraction(_ tableView: UITableView) {
        tableView.deselectRow(at: IndexPath, animated: true)
        //mostra o controlador de notas
        
        guard let vc = storyboard?.instantiateViewController(identifier: "note") as? NoteViewController else
    }
}

