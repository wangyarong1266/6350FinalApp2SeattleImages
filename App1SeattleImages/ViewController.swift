//
//  ViewController.swift
//  App1SeattleImages
//
//  Created by rongbaobao888 on 12/9/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var seattles = ["Seattle1", "Seattle2", "Seattle3", "Seattle4", "Seattle5", "Seattle6", "Seattle7", "Seattle8", "Seattle9", "Seattle10"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "SeattleTableViewCell", bundle: nil), forCellReuseIdentifier: "seattleCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return seattles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = Bundle.main.loadNibNamed("BeautyCell", owner: self)?.first as! BeautyCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "seattleCell", for: indexPath) as! SeattleTableViewCell
        cell.seattleImageView.image = UIImage(named: "Seattle\(indexPath.row + 1)")
        cell.seattleLabel.text = seattles[indexPath.row]
        return cell
    }


}

