//
//  ExampleViewController.swift
//  refapa
//
//  Created by user190180 on 4/19/21.
//

import UIKit

class ExampleViewController: UIViewController {

    let lesson: Lesson!
    
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        img.image = lesson.lessonDescription[0].imgFoto
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let structureVC = segue.destination as! StructureViewController
        structureVC.lesson = structureVC
    }

}
