//
//  ViewController.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class ViewController: UIViewController {
    // Este arreglo dummy se cargara con los archivos guardados desde un plist
    var dummyLesson = Lesson(
        lessonName: "Autor",
        completed: true,
        lessonStructure: LessonStructure(
            lessonDescription: "Esta es la descripcion del autor, aqui se explica como funciona",
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


}

