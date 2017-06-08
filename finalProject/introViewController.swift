//
//  introViewController.swift
//  finalProject
//
//  Created by Mario Alberto Guillén Rivas on 01/06/17.
//  Copyright © 2017 Mario Alberto Guillén Rivas. All rights reserved.
//

import UIKit

class introViewController: UIViewController {
    //Se declaran las variables para texo e imagen
    @IBOutlet weak var lblNombre: UILabel!
    var nombreIntro = ""
    @IBOutlet weak var imgUser: UIImageView!
    var urlUser = ""
    
    //Para cargar una imagen desde una URL
    func load_image(urlString:String) {
        //Le damos la URL desde el  mainViewController
        let imgURL: NSURL = NSURL(string: urlString)!
        //Se hace una petición a esa URL
        let request: NSURLRequest = NSURLRequest(URL: imgURL)
        //Se utiliza una sesion para descargar la imagen
        let session = NSURLSession.sharedSession()
        //Se le proporciona la solicitud a la tarea
        let task = session.dataTaskWithRequest(request) {
            (data, response, error) -> Void in
            //Si no hay error y data no es vacio
            if (error == nil && data != nil) {
                //Se declara que la imagen cargará con los datos obtenidos
                func display_image() {
                    self.imgUser.image = UIImage(data: data!)
                }
                //Este hilo se hace en el background
                dispatch_async(dispatch_get_main_queue(), display_image)
            }
        }
        //Se resumen las tareas
        task.resume()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //se asigna el texto al label y se manda a llamar la funcion con los datos que se van a proveer
        lblNombre.text = nombreIntro
        
        load_image(urlUser)
        
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
