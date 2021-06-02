//
//  ReferenceTableViewController.swift
//  refapa
//
//  Created by Abraham Haros on 16/05/21.
//

import UIKit

protocol AppDataSaver {
    func saveAppData()
}

class ReferenceTableViewController: UITableViewController, AppDataSaver {
    
    @IBOutlet weak var bookmarks: UIBarButtonItem!
    var referenceList = [Reference]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Refappa"
        
        initMainAppData()
        
    }
    
    var mainApp: MainApp!
    
    func initMainAppData() {
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("MainApp.plist")
        if (!FileManager.default.fileExists(atPath: path.path)) {
//            print("MainApp.plist does not exist, writing in documents...")
            writeSourcePlistToDocuments()
            readMainAppPlist()
        } else {
//            print("MainApp.plist does exist.")
            readMainAppPlist()
        }
    }
    
    func readMainAppPlist() {
        let ruta = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("MainApp.plist")
        do {
            let data = try Data.init(contentsOf: URL(fileURLWithPath: ruta.path))
            mainApp = try PropertyListDecoder().decode(MainApp.self, from: data)
            referenceList = mainApp.references
        }
        catch {
            print(error)
            let alert = UIAlertController(title: "ERROR", message: error.localizedDescription, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func writeSourcePlistToDocuments() {
        let ruta = Bundle.main.path(forResource: "Property List", ofType: "plist")
        var tempApp: MainApp!
        
        do {
            let data = try Data.init(contentsOf: URL(fileURLWithPath: ruta!))
            tempApp = try PropertyListDecoder().decode(MainApp.self, from: data)
        }
        catch {
            print(error)
            let alert = UIAlertController(title: "ERROR", message: error.localizedDescription, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
        
        let encoder = PropertyListEncoder()
        encoder.outputFormat = .xml

        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("MainApp.plist")

        do {
            let data = try encoder.encode(tempApp)
            try data.write(to: path)
        } catch {
            print(error)
            let alert = UIAlertController(title: "ERROR", message: error.localizedDescription, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func saveAppData() {
        let ruta = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("MainApp.plist")

        do {
            let encoder = PropertyListEncoder()
            encoder.outputFormat = .xml
            let data = try encoder.encode(mainApp)
            
            try data.write(to: URL.init(fileURLWithPath: ruta.path))
        }
        catch {
            print(error)
            let alert = UIAlertController(title: "ERROR", message: error.localizedDescription, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return referenceList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaReferencia", for: indexPath)

        cell.imageView?.image = referenceList[indexPath.row].getImage()
        cell.textLabel?.text = referenceList[indexPath.row].referenceName
        cell.textLabel?.font = UIFont(name: "Arial", size: 20)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100)
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "regular" {
            let sections = segue.destination as! SectionViewController
            sections.sectionTopicList = referenceList[tableView.indexPathForSelectedRow!.row].sections[0].topics
            sections.appDataSaver = self
            sections.title = referenceList[tableView.indexPathForSelectedRow!.row].referenceName
        } else if segue.identifier == "credits" {
            let sections = segue.destination as! CreditsViewController
            }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.landscape
    }
    
    override var shouldAutorotate: Bool {
        return false
        
    }

}
