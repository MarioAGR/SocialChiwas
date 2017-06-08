//
//  ViewController.swift
//  finalProject
//
//  Created by Mario Alberto Guillén Rivas on 22/05/17.
//  Copyright © 2017 Mario Alberto Guillén Rivas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate {
   //boton para inicio de sesion en facebook crea el boton y pide permiso para obtener el correo e informacion basica del usuario
    let loginButton: FBSDKLoginButton = {
        let button = FBSDKLoginButton()
        button.readPermissions = ["email"]
        return button
    }()
    //variables globales para nombre url de la imagen del usuario
    var nombre = ""
    var urlP = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //se agrega la vista del boton se centra y le damos un delegate a el mismo
        view.addSubview(loginButton)
        loginButton.center = view.center
        loginButton.delegate = self
        //Token para obtener si esta logeado o no
        if let token = FBSDKAccessToken.currentAccessToken() {
            fetchProfile()
        }
    }
  //obtener perfil del usuario
    func fetchProfile() {
        print("Fetched profile")
        //parametros del perfil del usuario
        let parameters = ["fields": "email, first_name, last_name, picture.type(large)"]
        FBSDKGraphRequest(graphPath: "me", parameters: parameters).startWithCompletionHandler { (connection, result, error) -> Void in
            //Imprimir el error, en caso que haya uno
            if error != nil {
                print(error)
                return
            }
            //Obtenemos el email del usuario
            if let email = result["email"] as? String {
                print(email)
            }
            //Obtener el primer nombre del usuario
            if let first_name = result["first_name"] as? String {
                print(first_name)
                self.nombre = first_name
            }
            //Para obtener la imagen, se obtiene de un diccionario de datos, asi que se indaga parte por parte hasta obtener la url
            if let picture = result["picture"] as? NSDictionary, data = picture["data"] as? NSDictionary, url = data["url"] as? String {
                self.urlP = url
                print("Picture")
                print(picture)
                //print(url)
            }
        }
    }
    //Acciones que se van a realizar cuando se completo un login exitoso
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        print("completed login")
        //Mandamos a llamar la funcion para obtener el perfil
        fetchProfile()
        print(nombre)
        //Lanzamos el segue cuando se haya logeado exitosamente
        performSegueWithIdentifier("fbdata", sender: self)
    }
    //Acciones para cuando se cierra sesión
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        
    }
    //Cuando se presiona el boton de iniciar sesion
    func loginButtonWillLogin(loginButton: FBSDKLoginButton!) -> Bool {
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Segue para mandar datos a la siguiente vista donde cargará el nombre e imagen del usuario
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "fbdata") {
            let miVwCtrllr = segue.destinationViewController as! introViewController
            miVwCtrllr.nombreIntro = nombre
            miVwCtrllr.urlUser = urlP
        }
    }

}
