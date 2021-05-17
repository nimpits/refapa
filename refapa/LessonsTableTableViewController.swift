//
//  LessonsTableTableViewController.swift
//  refapa
//
//  Created by user189782 on 4/26/21.
//

import UIKit

class LessonsTableTableViewController: UITableViewController {
   
    var lessonList = [Lesson]()
    
    var lessonListSelectedByUser: [Lesson]!
    
    var topicName: String = "Autor"

    override func viewDidLoad() {
        super.viewDidLoad()
        title = topicName
        lessonList = [lesson, lesson2, lesson3]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return lessonList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)

        let lessonSelected = lessonList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = lessonSelected.lessonName
        
        cell.contentConfiguration = content
        
        if lessonSelected.completed == true {
//            cell.contentView.backgroundColor = UIColor.green.withAlphaComponent(0.5)
            cell.accessoryType = .checkmark
        }
        else{}
        
        // Configure the cell...

        return cell
    }

    let lesson = Lesson.init(
        lessonName: "Autor Tradicional",
        completed: true,
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
                        
                    ),
                    questionAnswer: [
                        Answer.init(
                        isCorrect: false, answerText: "Answer1"
                    ),
                        Answer.init(
                        isCorrect: false, answerText: "Answer2"
                    ),
                        Answer.init(
                        isCorrect: false, answerText: "Answer3"
                    ),
                        Answer.init(
                        isCorrect: true, answerText: "Correct"
                    )
                    ],
                    isAnswered : false
                    
                )
            ]
        )
    )
    
    let lesson2 = Lesson.init(
        lessonName: "Autor Anónimo",
        completed: true,
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
                        
                    ),
                    questionAnswer: [
                        Answer.init(
                        isCorrect: false, answerText: "Answer1"
                    ),
                        Answer.init(
                        isCorrect: false, answerText: "Answer2"
                    ),
                        Answer.init(
                        isCorrect: false, answerText: "Answer3"
                    ),
                        Answer.init(
                        isCorrect: true, answerText: "Correct"
                    )
                    ],
                    isAnswered : false
                    
                )
            ]
        )
    )
    
    let lesson3 = Lesson.init(
        lessonName: "Nombre de usuario",
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
                        
                    ),
                    questionAnswer: [
                        Answer.init(
                        isCorrect: false, answerText: "Answer1"
                    ),
                        Answer.init(
                        isCorrect: false, answerText: "Answer2"
                    ),
                        Answer.init(
                        isCorrect: false, answerText: "Answer3"
                    ),
                        Answer.init(
                        isCorrect: true, answerText: "Correct"
                    )
                    ],
                    isAnswered : false
                    
                )
            ]
        )
    )
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let DescriptionVC = segue.destination as! DescriptionViewController
        DescriptionVC.lesson = lessonList[tableView.indexPathForSelectedRow!.row]
    }

}
