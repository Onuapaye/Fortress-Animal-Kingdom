//
//  AnimalsDetailViewController.swift
//  Fortress Animals
//
//  Created by epita on 31/05/2018.
//  Copyright © 2018 Fortress Bismark. All rights reserved.
//

import UIKit

class AnimalsDetailViewController: UIViewController {

    @IBOutlet weak var animalNameDetailLabel: UILabel!
    @IBOutlet weak var animalClassDetail: UILabel!
    @IBOutlet weak var animalKingdomDetail: UILabel!
    @IBOutlet weak var animalCodeDetail: UILabel!
    @IBOutlet weak var animalLifeSpanDetail: UILabel!
    @IBOutlet weak var animalPhotoDetail: UIImageView!
    @IBOutlet weak var animalDescriptionDetail: UITextView!
    //@IBOutlet weak var animalReproductionDetail: UITextView!
    //@IBOutlet weak var animalReproductionDetailText: UITextView!
    
    var animalsClassInstance: AnimalClassFile?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animalNameDetailLabel.text = animalsClassInstance?.animalName?.uppercased()
        animalClassDetail.text = "Class: " + (animalsClassInstance?.animalClass)!
        animalKingdomDetail.text = "Order: " + (animalsClassInstance?.animalOrder!)!
        
        animalLifeSpanDetail.text = "Life Span: " + (animalsClassInstance?.animalLifeSpan)!
        animalPhotoDetail.image = UIImage(named: (animalsClassInstance?.animalPhoto)!)
        animalDescriptionDetail.text = animalsClassInstance?.animalDescription
      
        
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
