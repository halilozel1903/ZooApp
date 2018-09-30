//
//  ViewController.swift
//  ZooApp
//
//  Created by Halil Özel on 27.09.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    
    

    @IBOutlet weak var tableViewAnimal: UITableView!
    
    var animalType = ["Not Killer","Killer"] // hayvan turleri icin bir array tanımlandı.
    var listOfKillerAnimals = [Animal]() // oldurucu hayvanlar
    var listOfNotKillerAnimals = [Animal]() // oldurucu turde olmayan hayvanlar

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // hayvanların bilgileri eklenmeye baslandı.
        listOfKillerAnimals.append(Animal(name: "Baboon", desc: "Live in big place with tree", image: "baboon"))
        listOfKillerAnimals.append(Animal(name: "Bulldog", desc: "Live in big place with tree", image: "bulldog"))
        listOfNotKillerAnimals.append(Animal(name: "Panda", desc: "Live in big place with tree", image: "panda"))
        listOfNotKillerAnimals.append(Animal(name: "Swallow Bird", desc: "Live in big place with tree", image: "swallow_bird"))
        listOfKillerAnimals.append(Animal(name: "White Tiger", desc: "Live in big place with tree", image: "white_tiger"))
        listOfNotKillerAnimals.append(Animal(name: "Zebra", desc: "Live in big place with tree", image: "zebra"))
        
        // tableView ile ilgili islemler
        tableViewAnimal.delegate = self
        tableViewAnimal.dataSource = self


    }
    
    
    // kac bolum olacak
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    // bolumlerın ne tur icerikleri olacak
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0{
              return listOfNotKillerAnimals.count
        }else{
            return listOfKillerAnimals.count
        }
        
      
    }
    
    // iceriklerin gosterilmesi
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellAnimal:AnimalTableViewCell = tableViewAnimal.dequeueReusableCell(withIdentifier: "CellAnimal", for: indexPath) as! AnimalTableViewCell
        
        if indexPath.section == 0{
            cellAnimal.setAnimal(animal: listOfNotKillerAnimals[indexPath.row])
        }else{
            cellAnimal.setAnimal(animal: listOfKillerAnimals[indexPath.row])
        }
        
        
        return cellAnimal
    }
    
    
    // verilen baslıkların gosterimi
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return animalType[section]
    }


}

