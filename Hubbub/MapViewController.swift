//
//  ViewController.swift
//  Hubbub
//
//  Created by Sanjay Mali on 25/01/17.
//  Copyright © 2017 Sanjay. All rights reserved.
//

import UIKit
import GoogleMaps
class MapViewController: UIViewController,GMSMapViewDelegate{
    @IBOutlet var map_View:GMSMapView?
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.title = "MyHUB"
        map_View?.isMyLocationEnabled = true
        map_View?.settings.myLocationButton = true
        navigation_title()
    }
    /**
     *@discussion method to display image as navigation titleView
     */
    func navigation_title(){
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "logo-with-icon-small")
        imageView.image = image
        navigationItem.titleView = imageView
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

