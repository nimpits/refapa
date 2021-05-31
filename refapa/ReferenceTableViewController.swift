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
        
        let ruta = Bundle.main.path(forResource: "Property List", ofType: "plist")
        
        do {
            let data = try Data.init(contentsOf: URL(fileURLWithPath: ruta!))
            mainApp = try PropertyListDecoder().decode(MainApp.self, from: data)
            referenceList = mainApp.references
        }
        catch {
            print(error)
            print("Error al cargar el archivo")
        }
    }
    
    var mainApp: MainApp!
    
    func saveAppData() {
        let ruta = Bundle.main.path(forResource: "Property List", ofType: "plist")!

        do {
            let encoder = PropertyListEncoder()
            encoder.outputFormat = .xml
            let data = try encoder.encode(mainApp)
            
            try data.write(to: URL.init(fileURLWithPath: ruta))
        }
        catch {
            print(error)
            print("Error al guardar el datos")
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
