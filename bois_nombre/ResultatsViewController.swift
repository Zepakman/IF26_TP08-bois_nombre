//
//  ResultatsViewController.swift
//  bois_nombre
//
//  Created by BOIS Martin on 19/11/2018.
//  Copyright © 2018 IF26. All rights reserved.
//

import UIKit

class ResultatsViewController: UIViewController {

    @IBOutlet weak var resultatLabel: UILabel!
    
    var count = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultatLabel.text = String(count)
        

        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
