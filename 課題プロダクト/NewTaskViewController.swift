//
//  NewTaskViewController.swift
//  課題プロダクト
//
//  Created by 大沼朝陽 on 2023/09/08.
//

import UIKit
import RealmSwift

class NewTaskViewController: UIViewController {
    
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var markSwitch: UISwitch!
    
    let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func save(){
        let item = Task()
        item.title = titleTextField.text ?? ""
        item.isMarked = markSwitch.isOn
        creatItem(item: item)
        
        self.dismiss(animated: true)
    }
    
    func creatItem(item: Task){
        try! realm.write{
            realm.add(item)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
