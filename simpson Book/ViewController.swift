//
//  ViewController.swift
//  simpson Book
//
//  Created by İzzet Kara on 25.06.2019.
//  Copyright © 2019 Izzet Kara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    


    @IBOutlet weak var tableView: UITableView!
    var mySimpsons = [Simpsons]()
    var chosenSimpson = Simpsons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //Simpson Class
        
        let bart = Simpsons()
        
        bart.name = "Bart Simpson"
        bart.occupation = "Student"
        bart.image = UIImage(named: "Bart.png")!
        
        let edna = Simpsons()
        
        edna.name = "Edna Simpson"
        edna.occupation = "Civil Engineer"
        edna.image = UIImage(named: "Edna.png")!
        
        let ned = Simpsons()
        
        ned.name = "Ned Simpson"
        ned.occupation = "Singer"
        ned.image = UIImage(named: "Ned.png")!
        
        
        //Simpson Array
        
        mySimpsons.append(bart)
        mySimpsons.append(edna)
        mySimpsons.append(ned)
        //append sınıfa ekleme tanıtma.
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
        // *****.count kodu: Sınıfında ne kadar veri varsa o kadar gösterili tableview üzerinde.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destionationVC = segue.destination as! detailsVC
            destionationVC.selectedSimpson = self.chosenSimpson
            //böylece seçilen simpson ile bir sonraki viewcontroldeki simpsona eşitlemiş oldum.
        }
    }
    

}

