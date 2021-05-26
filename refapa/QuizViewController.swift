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
    @IBOutlet weak var lblCongrats: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var lesson: Lesson!
    var correct : Bool!
    var appDataSaver: AppDataSaver!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = lesson.lessonStructure.examples[0].getImage()
        nextButton.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let lastAnswered = lesson.lessonQuiz.lastQuestionAnswered
        if (lastAnswered == lesson.lessonQuiz.questions.count){
            lblCongrats.text = "¡Felicidades, pasaste el quiz!"
            lblCongrats.textColor = UIColor.init(red: 31/255, green: 181/255, blue: 39/255, alpha: 1)
            nextButton.setTitle("Volver a la página principal", for: .normal)
            lesson.completed = true
            return 0
        }else{
            return lesson.lessonQuiz.questions[lastAnswered].questionAnswer.count 
        }
    }
    
     /* func isCorrect (answer : Answer) -> Bool {
        if answer.isCorrect == true{
            return true
        }
        return false
    }
     */
    
    func checkQuestion (question :Question) -> Bool {
        if question.isAnswered == true {
            return true
        }
        return false
    }
    

    
    //TODO fix font size because label keeps overflowing
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        
        let lastAnswered = lesson.lessonQuiz.lastQuestionAnswered
        let question = lesson.lessonQuiz.questions[lastAnswered]
        let questionAnswer = question.questionAnswer[indexPath.row].answerText //should we delete this?
        let questionText = question.questionText
        lbTituloCelda.text = questionText
        lbTituloCelda.numberOfLines = 0

        lbTituloCelda.preferredMaxLayoutWidth = 700
        lbTituloCelda.translatesAutoresizingMaskIntoConstraints = false

        lbTituloCelda.lineBreakMode = .byWordWrapping

        lbTituloCelda.sizeToFit()
        
        cell.textLabel?.text = questionAnswer
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let lastAnswered = lesson.lessonQuiz.lastQuestionAnswered
        let toCheck = lesson.lessonQuiz.questions[lastAnswered].questionAnswer[indexPath.row].isCorrect
        
        if(toCheck == true){
            correct = true
            //need to check if its the last question too
            //give poitns to the user
        }else {
            lesson.lessonQuiz.lastQuestionAnswered = lastAnswered
            correct = false
           
        }
    }
    
    
     @IBAction func checkCorrect(_ sender: UIButton) {
        
        if (lesson.completed == true){
            appDataSaver.saveAppData()
            navigationController?.popToViewController((navigationController?.viewControllers[1])!, animated: true)
        }
      
        
        if (correct == true){
            if (nextButton.titleLabel?.text == "Checar"){
                lesson.lessonQuiz.lastQuestionAnswered += 1
            }
            else{
            }
                
        

            tableView.reloadData()
        }else {
            lblCongrats.text = "¡Respuesta incorrecta!"
            lblCongrats.textColor = UIColor.init(red: 227/255, green: 82/255, blue: 66/255, alpha: 1)
            }
     }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableView.automaticDimension
    }
    
    /*
     func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath, titleForHeaderInSection section:Int) -> String?
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
