//
//  ExampleViewController.swift
//  refapa
//
//  Created by user190180 on 4/19/21.
//

import UIKit

class ExampleViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lesson.lessonExample.examples.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! ImageWithDescriptionTableViewCell

        let imgWithDesc = lesson.lessonExample.examples[indexPath.row]
        cell.imgView.image = imgWithDesc.imgFoto
        cell.lbDescription.text = imgWithDesc.imgDescription

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 324
    }
    
    var lesson: Lesson!

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = lesson.lessonName
        
        tableView.rowHeight = UITableView.automaticDimension
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
