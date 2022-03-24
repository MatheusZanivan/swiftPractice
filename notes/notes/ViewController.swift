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
    @IBOutlet var label:UILabel!
    
    
    
    //array de tuplas que vai ter titulos para as notas e a nota
    var models : [(title: String, note: String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //titulo que aparece quando aparece quando abre o app
        table.delegate = self
        table.dataSource = self
        title = "Notes"
    }
    
    //aperta um botao para criar uma nova nota
    @IBAction func didTapNewNote(){
        guard let vc = storyboard?.instantiateViewController(identifier: "new") as? EntryViewController else {
            return
        }
        vc.title = "New Note"
        vc.navigationItem.largeTitleDisplayMode  = .never
        vc.completion = { noteTitle, note in
            self.navigationController?.popToRootViewController(animated: true)
            self.models.append((title: noteTitle,note: note))
            self.label.isHidden = true
            self.table.isHidden = false
            self.table.reloadData()
            
        }
        navigationController?.pushViewController(vc, animated: true)
        
    }
    //Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row].title
        cell.detailTextLabel?.text = models[indexPath.row].note
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let model = models[indexPath.row]
        
        guard let vc = storyboard?.instantiateViewController(identifier: "note") as? NoteViewController else{
            return
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        vc.title = "Note"
        vc.noteTitle = model.title
        vc.note = model.note
        navigationController?.pushViewController(vc, animated: true)
    }
        //mostra o controlador de notas
        
    
    
    
}

