//
//  ViewController.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // Este arreglo dummy se cargara con los archivos guardados desde un plist

    var dummyLesson = Lesson(
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
    )
    
    
    var sections = [
        Section(
            sectionName: "Partes de la referencia",
            priority: 0,
            completion: 0,
            topics: [
                Topic(
                    topicName: "Autor",
                    topicDescription: "Aprende sobre el Autor en APA",
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
    
    /*
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            
        return 4
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            
        return 1
    }
    */
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    
    }


}

