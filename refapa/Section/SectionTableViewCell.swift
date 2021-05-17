//
//  SectionTableViewCell.swift
//  refapa
//
//  Created by Abraham Haros on 03/05/21.
//

import UIKit

protocol protocoloTopicIndex {
    func setIndex(index: Int)
}

class SectionTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    var topicList : [Topic]!
    var delegado : protocoloTopicIndex!
    var tableMain : SectionViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: For the collection view
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        topicList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopicCollectionViewCell", for: indexPath) as! TopicCollectionViewCell
        
        cell.imgFoto.image = topicList[indexPath.row].imgFoto
        cell.lbTitle.text = topicList[indexPath.row].topicName
        cell.lbCompletion.text = String(topicList[indexPath.row].completion) + "% Completed"
        
        // Rounded corners
        cell.layer.cornerRadius = 8
        cell.layer.masksToBounds = true
        
        return cell
    }
    
    // Size of the cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 145)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        delegado.setIndex(index: indexPath.row)
        tableMain.performSegue(withIdentifier: "TopicToLesson", sender: indexPath.row)
    }

}
