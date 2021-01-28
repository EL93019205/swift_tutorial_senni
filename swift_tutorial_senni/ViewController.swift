//
//  ViewController.swift
//  swift_tutorial_senni
//
//  Created by 早川マイケル on 2021/01/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = String(count)
    }

    @IBAction func plus(_ sender: Any) {
        count = count + 1
        
        label.text = String(count)
        
        if count == 10 {
            
            // 画面遷移をする
 //           performSegue(withIdentifier: "next", sender: nil)
   
            let nextVC = storyboard?.instantiateViewController(withIdentifier: "next") as! NextViewController
            navigationController?.pushViewController(nextVC, animated: true)
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.count2 = count
    }
    
}

