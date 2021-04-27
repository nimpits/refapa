//
//  ViewController.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    // Este arreglo dummy se cargara con los archivos guardados desde un plist
    
    @IBOutlet weak var authorButton: UIButton!
    @IBOutlet weak var pageButton: UIButton!
    @IBOutlet weak var sourceButton: UIButton!
    @IBOutlet weak var dateButton: UIButton!
    @IBOutlet weak var articleButton: UIButton!
    @IBOutlet weak var bookButton: UIButton!
    @IBOutlet weak var newspaperButton: UIButton!
    @IBOutlet weak var webPageButton: UIButton!
    
    var lessonsToSend: [Lesson]!
    

    /*
    var dummyLesson = Lesson(
        lessonName: "Autor",
        completed: true,
        buttonTag: 1,
        lessonStructure: LessonStructure(
            examples: [
                ImageWithDescription(
                    imgDescription: "Aqui va una descripciond e la foto",
                    imgFoto: UIImage(named: "Autor")
                )
            ]
        ),
        lessonDescription: [
            ImageWithDescription(
                imgDescription: "Esta es la descripcion de como el autor funciona en APA",
                imgFoto: UIImage(named: "Autor")
            )
        ],
        lessonExample: Example(
                examples: [
                    ImageWithDescription(
                        imgDescription: "Descripcion 1",
                        imgFoto: UIImage(named: "AutorExample")
                    )
                ]
        ),
        lessonQuiz: nil
    )
 */
    
    
    var sections = [
        Section(
            sectionName: "Partes de la referencia",
            priority: 0,
            completion: 0,
            topics: [
                Topic(
                    topicName: "Autor",
                    topicDescription: "Aprende sobre el Autor en APA",
                    buttonTag: 1,
                    imgFoto: UIImage(named: "Autor"),
                    priority: 0,
                    completion: 0,
                    lessons: [Lesson(
                        lessonName: "Autor",
                        completed: true,
                        lessonStructure: LessonStructure(
                            examples: [
                                ImageWithDescription(
                                    imgDescription: "Aqui va una descripciond e la foto",
                                    imgFoto: UIImage(named: "Autor")
                                )
                            ]
                        ),
                        lessonDescription: [
                            ImageWithDescription(
                                imgDescription: "Esta es la descripcion de como el autor funciona en APA",
                                imgFoto: UIImage(named: "Autor")
                            )
                        ],
                        lessonExample: Example(
                                examples: [
                                    ImageWithDescription(
                                        imgDescription: "Descripcion 1",
                                        imgFoto: UIImage(named: "AutorExample")
                                    )
                                ]
                        ),
                        lessonQuiz: nil
                    ),
                    ])
            ]
        )
    ]
    
    
    /*
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(sections[0].topics.count)
        return sections[0].topics.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "lessonCollection", for: indexPath) as! LCollectionViewCell
        print(sections[0].topics[indexPath.row].topicName)
        cell.itemLabel.text = sections[0].topics[indexPath.row].topicName
       // cell.itemImage.image = UIImage(named: sections[0].topics[indexPath.row].topicName)
        //cell.itemProgressBar.progress = dummyArray[indexPath.row].
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            
        return 4
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            
        return 1
    }
    */
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //collectionView.delegate = self
        //collectionView.dataSource = self
    
    
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        print("Button Pressed")
        switch sender {
           case authorButton:
                lessonsToSend = sections[0].topics[0].lessons
            performSegue(withIdentifier: "mainToLesson", sender: sender)
            print("1")
           case pageButton:
                lessonsToSend = sections[0].topics[0].lessons
            performSegue(withIdentifier: "mainToLesson", sender: sender)
           case sourceButton:
                lessonsToSend = sections[0].topics[0].lessons
            performSegue(withIdentifier: "mainToLesson", sender: sender)
           case dateButton:
                lessonsToSend = sections[0].topics[0].lessons
            performSegue(withIdentifier: "mainToLesson", sender: sender)
            case articleButton:
                lessonsToSend = sections[0].topics[0].lessons
                performSegue(withIdentifier: "mainToLesson", sender: sender)
            case bookButton:
                lessonsToSend = sections[0].topics[0].lessons
                performSegue(withIdentifier: "mainToLesson", sender: sender)
            case newspaperButton:
                lessonsToSend = sections[0].topics[0].lessons
                performSegue(withIdentifier: "mainToLesson", sender: sender)
            case webPageButton:
                lessonsToSend = sections[0].topics[0].lessons
                performSegue(withIdentifier: "mainToLesson", sender: sender)
           default:
               break

           }
        }

    // We're using this to send the Lesson Objects to the next view, so that they can be prepped, showed in the table and usable
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destVC = segue.destination as? LessonsTableTableViewController
        destVC?.lessonListSelectedByUser = lessonsToSend;
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}

