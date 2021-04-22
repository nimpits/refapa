//
//  DescriptionViewController.swift
//  refapa
//
//  Created by user190180 on 4/19/21.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    let lesson = Lesson.init(
        lessonName: "Autor",
        completed: false,
        lessonStructure: LessonStructure.init(
            lessonDescription: "Lesson Structure's Description",
            examples: [
                ImageWithDescription.init(
                    imgDescription: "Lesson Structure Image 1 Description",
                    imgFoto: UIImage.init(named: "dog1")
                )
            ]
        ),
        lessonDescription: [
            ImageWithDescription.init(
                imgDescription: "Lesson Description Image Description. Lesson Description Image Description. Lesson Description Image Description. Lesson Description Image Description.",
                imgFoto: nil
            )
        ],
        lessonExample: Example.init(
            examples: [ImageWithDescription.init(
                imgDescription: "Lesson Example Image Description",
                imgFoto: UIImage.init(named: "dog3")
            )]
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
    
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = lesson.lessonName
        
        
        
        if let foto = lesson.lessonDescription[0].imgFoto {
            img.image = foto
        } else {
            img.isHidden = true
        }
        
        lbDescription.text = lesson.lessonDescription[0].imgDescription
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
