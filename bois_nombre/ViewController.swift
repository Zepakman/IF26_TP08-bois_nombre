//
//  ViewController.swift
//  bois_nombre
//
//  Created by BOIS Martin on 19/11/2018.
//  Copyright © 2018 IF26. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var difficultyControl: UISegmentedControl!
    @IBOutlet weak var jouerButton: UIButton!
    
    @IBAction func difficultyChange(_ sender: UISegmentedControl) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestViewController : JeuxViewController = segue.destination as! JeuxViewController
        
        if difficultyControl.selectedSegmentIndex == 0 {
            DestViewController.difficulty = 1
        } else if difficultyControl.selectedSegmentIndex == 1 {
            DestViewController.difficulty = 2
        } else {
            DestViewController.difficulty = 3
        }
    }
    
    @IBAction func jouerAction(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

