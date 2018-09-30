//
//  AnimalTableViewCell.swift
//  ZooApp
//
//  Created by Halil Özel on 27.09.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {

    // componentlerin tanımlamaları
    @IBOutlet weak var imageViewAnimal: UIImageView!
    @IBOutlet weak var labelAnimal: UILabel!
    @IBOutlet weak var textViewAnimal: UITextView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    // fonksiyon tanımı
    func setAnimal(animal:Animal){
        
        // degerleri bilesenlere atanıyor.
        self.labelAnimal.text = animal.name!
        self.textViewAnimal.text = animal.desc!
        self.imageViewAnimal.image = UIImage(named: animal.image!)
        
    }

    // secilen elemanlara gidecek bilgiler
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
    }

}
