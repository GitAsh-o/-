//
//  ViewController.swift
//  課題プロダクト
//
//  Created by 大沼朝陽 on 2023/09/08.
//

import UIKit
import RealmSwift

class TaskViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    let realm = try! Realm()
    var items: [Task] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TaskTableViewCell", bundle: nil), forCellReuseIdentifier: "ItemCell")
        items = readItems()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        items = readItems()
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! TaskTableViewCell
        let item: Task = items[indexPath.row]
        cell.setCell(title: item.title, isMarked: item.isMarked)
        
        return cell
    }
    
    func readItems() -> [Task]{
        return Array(realm.objects(Task.self))
    }


}

