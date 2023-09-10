//
//  EditViewController.swift
//  Product
//
//  Created by 大沼朝陽 on 2023/09/10.
//

import UIKit
import RealmSwift

class EditViewController: UIViewController {
    
    let realm = try! Realm()
    var items: [Task] = []
    
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var markSwitch: UISwitch!
    @IBOutlet weak var picker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func save1(){
        let item = Task()
        item.title = titleTextField.text ?? ""
        item.isMarked = markSwitch.isOn
        item.date1 = picker.date
        
        print("aaaa")
        
        self.dismiss(animated: true)
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
