//
//  ViewController.swift
//  timesTable
//
//  Created by Darren Sill on 17/08/2017.
//  Copyright © 2017 darren.sill. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var table: UITableView!
    
    @IBAction func onButton(_ sender: Any) {
        
        print("hello")
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String((indexPath.row + 1) * (Int(slider.value)))
        return cell
    }
    
    @IBAction func onSliderChanged(_ sender: Any) {
        
        slider.value = floor(slider.value)
        numberLabel.text = String(Int(slider.value))
        
        table.reloadData()
        
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

