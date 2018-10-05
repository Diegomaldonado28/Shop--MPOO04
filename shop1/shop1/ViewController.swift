//
//  ViewController.swift
//  shop1
//
//  Created by Usuario invitado on 4/10/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var TABLE: UITableView!
    
    var list = [Campo]()

    override func viewDidLoad() {
        super.viewDidLoad()
        list.append(Campo(Name: "Balon de futbol", Price: "\(279.99)", Desc: "Balon deportivo NIKE", Image: UIImage(named:"balonike")!))
        
        list.append(Campo(Name: "Balon de baloncesto", Price: "\(120.99)", Desc: "Balon WILSON", Image: UIImage(named: "balonspalding")!))
        list.append(Campo(Name: "Balon NFL", Price: "\(549.99)", Desc: "Balon tipo F.Americano Wilson", Image: UIImage(named: "balonamericano")!))
        list.append(Campo(Name: "Mr. Wilson", Price: "\(286.50)", Desc: "Balon Wilson de volley playa", Image: UIImage(named: "Mrwilson")!))
        list.append(Campo(Name: "Suddera", Price: "\(479.20)", Desc: "Sudadera para niño", Image: UIImage(named: "Sudaderatrailblazers")!))
        list.append(Campo(Name: "Camiseta", Price: "\(1500.99)", Desc: "PSG NIKE-Jordan", Image: UIImage(named: "Camisetapsg")!))

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        cell.textLabel?.text = "\(list[indexPath.row].Name)"
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "Select" {
            
            let indexPath = TABLE.indexPathForSelectedRow
            let destination = segue.destination as! ProductDataViewController
            
            destination.product = list[(indexPath?.row)!]
        }
        
        
    }
}

