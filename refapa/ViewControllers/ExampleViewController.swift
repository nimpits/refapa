//
//  ExampleViewController.swift
//  refapa
//
//  Created by user190180 on 4/19/21.
//

import UIKit

class ExampleViewController: UIViewController {

    var lesson: Lesson!
    
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = lesson.lessonName
        img.image = lesson.lessonExample.examples[0].imgFoto
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let structureVC = segue.destination as! StructureViewController
        structureVC.lesson = lesson
    }

}
