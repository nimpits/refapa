//
//  LessonsTableTableViewController.swift
//  refapa
//
//  Created by user189782 on 4/26/21.
//

import UIKit

class LessonsTableTableViewController: UITableViewController {
   
    var topic : Topic!
    
    var lessonList: [Lesson]!
    
    var lessonListSelectedByUser: [Lesson]!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = topic.topicName
        lessonList = topic.lessons
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
            cell.accessoryType = .checkmark
        }
        else{}

        return cell
    }

    var appDataSaver: AppDataSaver!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let DescriptionVC = segue.destination as! DescriptionViewController
        DescriptionVC.lesson = lessonList[tableView.indexPathForSelectedRow!.row]
        DescriptionVC.appDataSaver = appDataSaver
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.landscape
    }
    
    override var shouldAutorotate: Bool {
        return false
        
    }

}
