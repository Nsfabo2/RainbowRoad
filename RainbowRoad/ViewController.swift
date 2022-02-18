//
//  ViewController.swift
//  RainbowRoad
//
//  Created by Najla on 28/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Tabel: UITableView!
    
    let colors:[UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Tabel.dataSource = self
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Tabel.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath) //as ! CustomCell
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
}

