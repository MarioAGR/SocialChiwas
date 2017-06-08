//
//  favoritesViewController.swift
//  finalProject
//
//  Created by Mario Alberto Guillén Rivas on 22/05/17.
//  Copyright © 2017 Mario Alberto Guillén Rivas. All rights reserved.
//

import UIKit

class favoritesViewController: UIViewController, UITableViewDataSource {
    
    let nameRest = [
        "Aloha Burguer", /* 1 */
        "Mandy's Burguer", /* 2 */
        "La Bella Nápoles", /* 3 */
        "El Champion", /* 4 */
        "Le Rostisseria", /* 5 */
        /* Bar */
        "Extreme Wings Burgers & Beer", /* 1 */
        "El 34 Billar & Drink",
        "The Blackout Venue",
        "Dos Tizas"
    ]
    let addressRest = [
        "31107, Izalco 831, Panorámico, Chihuahua", /* 1 */
        "Krakatoa, Panorámico, Chihuahua", /* 2 */
        "Avenida José María Iglesias 5711, Paro /* 3 */námico, Chihuahua",
        "Av. Zaragoza 5927, Granjas, Chihuahua", /* 4 */
        "Iztacihuatl 801, Int. 13, Panorámico, Chihuahua", /* 5 */
        /* Bar */
        "Avenida Francisco Villa 2705, Zona Sin Asignación de Nombre de Colonia, Chihuahua", /* 1 */
        "local E-F, Avenida Tecnologico 4903, Norte I, Chihuahua", /* 2 */
        "Avenida Francisco Villa 4907, Arboledas I Etapa, Chihuahua", /* 3 */
        "Av. Tecnológico 4305, Las Granjas, 31100 Chihuahua" /* 4 */
    ]
    let telephoneRest = [
        "N/A", /* 1 */
        "N/A", /* 2 */
        "614 417 7233",/* 3 */
        "614 417 3630", /* 4 */
        "614 138 4568", /* 5 */
        /* Bar */
        "N/A", /* 1 */
        "614 247 4296", /* 2 */
        "614 417 3030", /* 3 */
        "614 421 9914" /* 4 */
    ]
    let scheduleRest = [
        "Sunday 12:30 p.m. - 11 p.m. , Monday to Saturday 12:30 p.m. - 15 p.m.", /* 1 */
        "N/A", /* 2 */
        "Sunday to Thursday 12 p.m. - 9:30 p.m. , Friday Saturday 12 p.m. - 10 p.m.", /* 3 */
        "All days 7 a.m. - 11 p.m.", /* 4 */
        "All days 11 a.m. - 5 p.m.", /* 5 */
        /* Bar */
        "N/A", /* 1 */
        "Sunday to Wednesday 4 p.m. - 12 a.m. , Thursday to Saturday 4 p.m. - 2 a.m.", /* 2 */
        "All days 6 p.m. - 1:30 a.m.", /* 3 */
        "Friday to Sunday 12 p.m. to 1 a.m. , Monday to Thursday 12 p.m. 12 a.m." /* 4 */
    ]
    let latRest = [
        "28.6694994", /* 1 */
        "28.6692561", /* 2 */
        "28.6695126", /* 3 */
        "28.6713135", /* 4 */
        "28.6741903", /* 5 */
        /* Bar */
        "28.6641189", /* 1 */
        "28.6694518", /* 2 */
        "28.6614229", /* 3 */
        "28.6700383" /* 4 */
    ]
    let longRest = [
        "-106.1154437", /* 1 */
        "-106.1137827", /* 2 */
        "-106.1131452", /* 3 */
        "-106.1086333", /* 4 */
        "-106.1153122", /* 5 */
        /* Bar */
        "-106.1266228", /* 1 */
        "-106.0955085", /* 2 */
        "-106.1222307", /* 3 */
        "-106.0962716" /* 4 */
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Numero de filas en la tabla
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameRest.count
    }
    //Rellenamos la tabla con los datos
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("favoritesCell") as! favsTableViewCell
        
        celda.nameR.text = nameRest[indexPath.row]
        celda.addressR.text = addressRest[indexPath.row]
        celda.telephoneR.text = telephoneRest[indexPath.row]
        celda.scheduleR.text = scheduleRest[indexPath.row]
        
        return celda
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
