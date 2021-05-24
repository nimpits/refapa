//
//  SectionViewController.swift
//  refapa
//
//  Created by Abraham Haros on 03/05/21.
//

import UIKit

class SectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var appDataSaver: AppDataSaver!
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        return CGSize(width: (screenWidth / 2) - 30, height: (screenHeight / 4) - 10)
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sectionTopicList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopicCollectionViewCell", for: indexPath) as! TopicCollectionViewCell
        
        cell.imgFoto.image = sectionTopicList[indexPath.row].getImage()
        cell.lbTitle.text = sectionTopicList[indexPath.row].topicName
        let progress = calculateProgress(topic: sectionTopicList[indexPath.row])
        cell.lbCompletion.text = String(progress) + "% Completed"
        
        if (progress == 100.0) {
            cell.backgroundColor = UIColor(red: 0.24, green: 0.70, blue: 0.44, alpha: 1.00)
        }
        
        // Rounded corners
        cell.layer.cornerRadius = 8
        cell.layer.masksToBounds = true
        
        return cell
    }
    
    @IBOutlet weak var lbAppTitle: UILabel!
    var sectionTopicList = [Topic]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbAppTitle.text = "Selecciona el tema que deseas aprender"
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
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
            lessonsTableVC.appDataSaver = appDataSaver
        }

    }
  
    func calculateProgress(topic: Topic) -> Double {
        let totalLessons = topic.lessons.count
        var totalLessonsCompleted = 0
        for lesson in topic.lessons {
            if lesson.completed {
                totalLessonsCompleted += 1
            }
        }
        
        if (totalLessonsCompleted == 0) {
            return 0
        } else {
            return floor((Double(totalLessonsCompleted) / (Double(totalLessons))) * 100)
        }
    }

}
