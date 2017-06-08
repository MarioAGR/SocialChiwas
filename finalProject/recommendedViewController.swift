//
//  recommendedViewController.swift
//  finalProject
//
//  Created by Mario Alberto Guillén Rivas on 22/05/17.
//  Copyright © 2017 Mario Alberto Guillén Rivas. All rights reserved.
//

import UIKit

class recommendedViewController: UIViewController, UITableViewDataSource {

    let nameRest = [
        "Restaurante La Central", /* 1 */
        "Fredy's Tortas Y Tacos", /* 2 */
        "El Hojaldre", /* 3 */
        "Coliseo Restaurante Bar", /* 4 */
        "Boston's Restaurant & Sports Bar" /* 5 */
    ]
    let addressRest = [
        "Calle Independencia 408, Zona Centro, 03100 Chihuahua,", /* 1 */
        "Zona Centro, 31000 Chihuahua, Chih.", /* 2 */
        "106, Calle Jose Maria Morelos 106, Zona Centro II, 31000 Chihuahua",
        "Calle Jose Maria Morelos #103, Centro, Zona Centro, 31000 Chihuahua", /* 4 */
        "Periferico de la Juventud 7521, Avenida de la Juventud, Misiones I Etapa, 31161" /* 5 */
    ]
    let telephoneRest = [
        "614 410 2238", /* 1 */
        "N/A", /* 2 */
        "614 413 4329",/* 3 */
        "614 416 1803", /* 4 */
        "614 426 2627" /* 5 */
    ]
    let schedule = [
        "N/A", /* 1 */
        "N/A", /* 2 */
        "N/A", /* 3 */
        "All days 11 a.m. - 2 p.m.", /* 4 */
        "Sunday to Thursday 12 p.m. - 12 a.m. , Friday & Saturday 12 p.m. - 1 a.m." /* 5 */
    ]
    let latRest = [
        "28.6361586", /* 1 */
        "28.6350492", /* 2 */
        "28.6355667", /* 3 */
        "28.6355676", /* 4 */
        "28.6505161" /* 5 */
    ]
    let longRest = [
        "-106.0760424", /* 1 */
        "-106.0758034", /* 2 */
        "-106.0744442", /* 3 */
        "-106.0745779", /* 4 */
        "-106.1299253" /* 5 */
    ]
    
    let imgs = [
        "Restaurante La Central", /* 1 */
        "Fredy's Tortas Y Tacos", /* 2 */
        "El Hojaldre", /* 3 */
        "Coliseo Restaurante Bar", /* 4 */
        "Boston's Restaurant & Sports Bar" /* 5 */
    ]
    //Numero de filas en la tabla
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameRest.count
    }
    //Rellenamos los datos en la tabla
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("recomCell") as! recomTableViewCell
        
        celda.nameR.text = nameRest[indexPath.row]
        celda.addressR.text = addressRest[indexPath.row]
        celda.telephoneR.text = telephoneRest[indexPath.row]
        celda.scheduleR.text = schedule[indexPath.row]
        
        let imgHere = UIImage(named: imgs[indexPath.row])
        celda.imgRB.image = imgHere
        
        return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
