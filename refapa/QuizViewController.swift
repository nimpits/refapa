//
//  QuizViewController.swift
//  refapa
//
//  Created by user189782 on 5/2/21.
//

import UIKit

class QuizViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    

    @IBOutlet weak var lbTituloCelda: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nextButton: UIButton!
    
    var lesson: Lesson!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.backgroundColor = UIColor.blue
        
        // Do any additional setup after loading the view.
        
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lesson.lessonQuiz.questions[0].questionAnswer.count
        
    }
    
     /* func isCorrect (answer : Answer) -> Bool {
        if answer.isCorrect == true{
            return true
        }
        return false
    }
     */
    
    func checkQuestion (lessonQuiz :Lesson) -> Int {
    return 3
    }
    
    func isAnswered (question : Question)-> Bool{
        
        return false
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
      /*  let a = lesson.lessonQuiz.questions.count
        
        for i in 1...a {
            
            if let answer = lesson.lessonQuiz.questions[indexPath.row] {
                
            }
            
        }*/
        
        
        
        let question = lesson.lessonQuiz.questions[0]
        
        let questionAnswer = question.questionAnswer[indexPath.row].answerText
        
        let questionText = question.questionText
        
        
                
        lbTituloCelda.text = questionText
        
        
        cell.textLabel?.text = questionAnswer
    
        return cell
    }
    
    /* func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath, titleForHeaderInSection section:Int) -> String?
    {
        
        let question = lesson.lessonQuiz.questions[indexPath.row].questionText
        
        return question
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
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
    
    

}
