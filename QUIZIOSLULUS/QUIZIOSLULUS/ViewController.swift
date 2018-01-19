//
//  ViewController.swift
//  QUIZIOSLULUS
//
//  Created by arif luqman rabono on 1/19/18.
//  Copyright © 2018 arif luqman rabono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtRt: UILabel!
    @IBOutlet weak var etAQ: UITextField!
    @IBOutlet weak var etAGM: UITextField!
    @IBOutlet weak var etKomp: UITextField!
    @IBOutlet weak var etIndo: UITextField!
    @IBOutlet weak var etMTK: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnRatarata(_ sender: Any) {
        var mtk : Int? = Int(etMTK.text!)
        var aq : Int? = Int(etAQ.text!)
        var indo : Int? = Int(etIndo.text!)
        var kom : Int? = Int(etKomp.text!)
        var ag : Int? = Int(etAGM.text!)
        
        let rumus : Double = Double((mtk! + aq! + indo! + kom! + ag!) / (5))
        if(rumus < 70) {
            txtRt.text! = "Rata - rata : \(rumus) " + "Anda Tidak Lulus"
        }else if(rumus > 70) {
            txtRt.text! = "Rata - rata : \(rumus) "  + "Anda Lulus"
        }
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

