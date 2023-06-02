//
//  ViewController.swift
//  Weather2
//
//  Created by Roja on 25/11/22.
//

import UIKit

class ViewController: UIViewController {
    
//MARK: Outlets.
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var cloudImage: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var locationImage: UIImageView!
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
//MARK: properties.
    let viewModel = ShowerViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        activityIndicator.startAnimating()
        viewModel.getShowerViewModel { Shower in
            DispatchQueue.main.async {
                guard let city = Shower?.city,
                      let temp = Shower?.temp,
                      let desc = Shower?.desc,
                      let icon = Shower?.icon else { return }
                //Stop Animating Indicator.
                self.activityIndicator.stopAnimating()
                //ConfigerData to UI
                self.tempLabel.text = "\(temp)"
                self.cityName.text = city
                self.descLabel.text = desc
                self.cloudImage.image = UIImage(named: icon)
            }
        }
    }
}
