//
//  ViewController.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    
    var dummyArray = [Lesson]()
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dummyArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "lessonCollection", for: indexPath) as! LessonCollectionViewCell
        cell.itemLabel.text = dummyArray[indexPath.row].lessonName
        cell.itemImage.image = UIImage(named: dummyArray[indexPath.row].lessonName)
        //cell.itemProgressBar.progress = dummyArray[indexPath.row].
    }
    
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
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        dummyArray.append(dummyLesson)
        
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
                        lessons: [dummyLesson]
                        )
                ]
            )
        ]
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
            var text = "Button \(sender.tag + 1) was pressed"
        print(text)
        }


}

