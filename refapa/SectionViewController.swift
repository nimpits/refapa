//
//  SectionViewController.swift
//  refapa
//
//  Created by Abraham Haros on 03/05/21.
//

import UIKit

class SectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 145)
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sectionTopicList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopicCollectionViewCell", for: indexPath) as! TopicCollectionViewCell
        
        cell.imgFoto.image = sectionTopicList[indexPath.row].imgFoto
        cell.lbTitle.text = sectionTopicList[indexPath.row].topicName
        cell.lbCompletion.text = String(sectionTopicList[indexPath.row].completion) + "% Completed"
        
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
        }

    }
  
    

}
