//
//  SectionViewController.swift
//  refapa
//
//  Created by Abraham Haros on 03/05/21.
//

import UIKit

class SectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 145)
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sectionTopicList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopicCollectionViewCell", for: indexPath) as! TopicCollectionViewCell
        
        cell.imgFoto.image = sectionTopicList[indexPath.row].imgFoto
        cell.lbTitle.text = sectionTopicList[indexPath.row].topicName
        cell.lbCompletion.text = String(sectionTopicList[indexPath.row].completion) + "% Completed"
        
        // Rounded corners
        cell.layer.cornerRadius = 8
        cell.layer.masksToBounds = true
        
        return cell
    }
    
    @IBOutlet weak var lbAppTitle: UILabel!
    var sectionTopicList = [Topic]()
    var sectionList = [Section]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbAppTitle.text = "REFAPPA"
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
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

        sectionTopicList = [
            Topic(topicName: "Autor", topicDescription: "Autor", imgFoto: UIImage(named: "Autor"), priority: 0, completion: 0, lessons: [lesson, lesson2, lesson3]),
            Topic(topicName: "Fecha de consulta", topicDescription: "Fecha de consulta", imgFoto: UIImage(named: "FechaConsulta"), priority: 1, completion: 0, lessons: [lesson, lesson2, lesson3]),
            Topic(topicName: "Fuente de Consulta", topicDescription: "Consulta", imgFoto: UIImage(named: "FuenteConsulta"), priority: 0, completion: 0, lessons: [lesson, lesson2, lesson3]),
            Topic(topicName: "Paginas", topicDescription: "Paginas", imgFoto: UIImage(named: "Paginas"), priority: 0, completion: 0, lessons: [lesson, lesson2, lesson3])
        ]
        
        sectionList = [
            Section(sectionName: "Partes de la referencia", priority: 0, completion: 0, topics: sectionTopicList),
            Section(sectionName: "Tipos de referencia", priority: 0, completion: 0, topics: sectionTopicList)
        ]
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "TopicsToLesson" {
            let selectedIndexPath = collectionView.indexPath(for: sender as! UICollectionViewCell)!
            let lessonsTableVC = segue.destination as! LessonsTableTableViewController
            lessonsTableVC.topic = sectionTopicList[selectedIndexPath.row]
        }

    }
  
    

}
