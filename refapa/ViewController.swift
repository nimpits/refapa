//
//  ViewController.swift
//  refapa
//
//  Created by Abraham Haros on 17/04/21.
//

import UIKit

class ViewController: UIViewController {
    var lessonsToSend: [Lesson]!

    override func viewDidLoad() {
        super.viewDidLoad()
        //collectionView.delegate = self
        //collectionView.dataSource = self
    }

    // We're using this to send the Lesson Objects to the next view, so that they can be prepped, showed in the table and usable
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destVC = segue.destination as? LessonsTableTableViewController
        destVC?.lessonListSelectedByUser = lessonsToSend;
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.landscape
    }
    
    override var shouldAutorotate: Bool {
        return false
        
    }

}

