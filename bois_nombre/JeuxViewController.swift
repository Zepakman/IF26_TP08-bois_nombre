//
//  JeuxViewController.swift
//  bois_nombre
//
//  Created by BOIS Martin on 19/11/2018.
//  Copyright © 2018 IF26. All rights reserved.
//

import UIKit


class JeuxViewController: UIViewController {

    @IBOutlet weak var borneInfButton: UIButton!
    @IBOutlet weak var borneSupButton: UIButton!
    @IBOutlet weak var nombreField: UITextField!
    
    
    var difficulty = Int()
    var nbMystere = Int()
    var borneSup = Int()
    var borneInf = Int()
    var nombreEssais = 0
    
    @IBAction func TesterButton(_ sender: Any) {
        if self.nombreField.text != "" {
            nombreEssais = nombreEssais + 1
            if self.nombreField.text == String(nbMystere) {
                performSegue(withIdentifier: "segueBravo", sender: self)
            
            } else if ((Int(self.nombreField.text!)! < self.nbMystere) && (Int(self.nombreField.text!)! > self.borneInf)) {
                self.borneInf = (Int(self.nombreField.text!)!)
                self.borneInfButton.setTitle((self.nombreField.text), for: .normal)
            } else if ((Int(self.nombreField.text!)! > self.nbMystere) && (Int(self.nombreField.text!)! < self.borneSup)){
                self.borneSup = (Int(self.nombreField.text!)!)
                self.borneSupButton.setTitle((self.nombreField.text), for: .normal)
            }
            
            self.nombreField.text = ""
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueBravo" {
            let vc = segue.destination as? ResultatsViewController
            vc?.count = self.nombreEssais
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.borneInfButton.setTitle("1", for: .normal)
        self.borneInf = 1
        
        if difficulty == 1 {
            self.borneSup = 100
            self.borneSupButton.setTitle("100", for: .normal)
        } else if difficulty == 2 {
            self.borneSup = 1000
            self.borneSupButton.setTitle("1000", for: .normal)
        } else {
            self.borneSup = 10000
            self.borneSupButton.setTitle("10000", for: .normal)
        }
        
        self.nbMystere = Int(arc4random_uniform(UInt32(borneSup))) + 1
        
        

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
