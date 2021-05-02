//
//  QuizViewController.swift
//  refapa
//
//  Created by user189782 on 5/2/21.
//

import UIKit

class QuizViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    

    @IBOutlet weak var tableView: UITableView!
    var lesson: Lesson!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lesson.lessonQuiz.questions.count
      
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        let question = lesson.lessonQuiz.questions[indexPath.row]
        
        let questionAnswer = question.questionAnswer[indexPath.row].answerText
        
        cell.textLabel?.text = questionAnswer
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section:Int) -> String?
    {
    
      return "QUESTION 1"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
