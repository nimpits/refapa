//
//  DescriptionViewController.swift
//  refapa
//
//  Created by user190180 on 4/19/21.
//

import UIKit

class DescriptionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lesson.lessonDescription.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! ImageWithDescriptionTableViewCell

        let imgWithDesc = lesson.lessonDescription[indexPath.row]
        
        if let foto = imgWithDesc.imgFoto {
            cell.imgView.image = foto
        } else {
            cell.imgView.isHidden = true
        }
        
        if let desc = imgWithDesc.imgDescription {
            cell.lbDescription.text = desc
        } else {
            cell.lbDescription.isHidden = true
        }

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 324
    }
    
    
    let lesson = Lesson.init(
        lessonName: "Autor",
        completed: false,
        lessonStructure: LessonStructure.init(
            examples: [
                ImageWithDescription.init(
                    imgDescription: "Lesson Structure Image 1 Description",
                    imgFoto: UIImage.init(named: "dog1")
                )
            ]
        ),
        lessonDescription: [
            ImageWithDescription.init(
                imgDescription: "Les1111son Description Ima1111ge Description. L111esson Description Image Description. Lesson Description Image Description. Lesson Description Image Description.",
                imgFoto: nil
            ),
            ImageWithDescription.init(
                imgDescription: "Lesson D22escription Image Description. Less2on Description Image Descri22ption. Lesson Description Image D22escription. Lesson Description Image Description.",
                imgFoto: UIImage.init(named: "dog1")
            ),
            ImageWithDescription.init(
                imgDescription: "Lesson Description Image Description 3. Lesson Description Image Descrip333tion. Lesson Description Imag333e Description. Lesson Description 33Image Description.",
                imgFoto: UIImage.init(named: "dog3")
            )
        ],
        lessonExample: Example.init(
            examples: [
                ImageWithDescription.init(
                    imgDescription: "Lesson Example Image Description",
                    imgFoto: UIImage.init(named: "dog3")
                )
            ]
        ),
        lessonQuiz: Quiz.init(
            grade: 0.0,
            questions: [
                Question.init(
                    questionText: "Question text 1",
                    points: 10,
                    questionImage: ImageWithDescription.init(
                        imgDescription: "Image description",
                        imgFoto: UIImage.init(named: "dog4")
                    )
                )
            ]
        )
    )
    
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
        
        let exampleVC = segue.destination as! ExampleViewController
        exampleVC.lesson = lesson
    }

}
