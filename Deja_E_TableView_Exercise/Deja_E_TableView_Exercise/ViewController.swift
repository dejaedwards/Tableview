//
//  ViewController.swift
//  Deja_E_TableView_Exercise
//
//  Created by Deja Edwards on 8/4/20.
//  Copyright © 2020 Deja Edwards. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let dejasShoes = ["Jordans","Nikes", "Yeezys", "Crocs"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dejasShoes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycellID")
        cell?.textLabel?.text = dejasShoes[indexPath.row]
        return cell!
    }
}

