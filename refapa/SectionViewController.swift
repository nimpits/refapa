//
//  SectionViewController.swift
//  refapa
//
//  Created by Abraham Haros on 03/05/21.
//

import UIKit

class SectionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var lbAppTitle: UILabel!
    var sectionTopicList = [Topic]()
    var sectionList = [Section]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbAppTitle.text = "REFAPPA"

        sectionTopicList = [
            Topic(topicName: "Autor", topicDescription: "Autor", imgFoto: UIImage(named: "Autor"), priority: 0, completion: 0, lessons: [Lesson]()),
            Topic(topicName: "Fecha de consulta", topicDescription: "Fecha de consulta", imgFoto: UIImage(named: "FechaConsulta"), priority: 1, completion: 0, lessons: [Lesson]()),
            Topic(topicName: "Fuente de Consulta", topicDescription: "Consulta", imgFoto: UIImage(named: "FuenteConsulta"), priority: 0, completion: 0, lessons: [Lesson]()),
            Topic(topicName: "Paginas", topicDescription: "Paginas", imgFoto: UIImage(named: "Paginas"), priority: 0, completion: 0, lessons: [Lesson]())
        ]
        
        sectionList = [
            Section(sectionName: "Partes de la referencia", priority: 0, completion: 0, topics: sectionTopicList),
            Section(sectionName: "Tipos de referencia", priority: 0, completion: 0, topics: sectionTopicList)
        ]
    }
    
    // MARK: For the table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sectionList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionTableViewCell", for: indexPath) as! SectionTableViewCell
        
        cell.lbTitle.text = sectionList[indexPath.row].sectionName
        cell.topicList = sectionList[indexPath.row].topics
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat((sectionList[indexPath.row].topics.count / 2) * 180)
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
//        let LessonsTableVC = segue.destination as! LessonsTableTableViewController
//        LessonsTableVC.topicName = sectionTopicList[tableView.indexPathForSelectedRow!.row].topicName
//        collectionView.
    }
  
    

}
