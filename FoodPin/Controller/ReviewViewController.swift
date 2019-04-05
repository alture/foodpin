//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by Redemax on 2/21/19.
//  Copyright © 2019 Alisher Altore. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var rateButtons: [UIButton]!
    @IBOutlet var closeButton: UIButton!
    
    var restaurant = RestaurantMO()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let restaurantImage = restaurant.image {
             backgroundImageView.image = UIImage(data: restaurantImage as Data)
        }
        
        // Applying the blur effect
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        let moveRightTransform = CGAffineTransform(translationX: 600, y: 0)
        let scaleUpTransform = CGAffineTransform(scaleX: 5.0, y: 0)
        let moveScaleTransform = scaleUpTransform.concatenating(moveRightTransform)
        
        // Make the button invisible
        for rateButton in rateButtons {
            rateButton.alpha = 0
            rateButton.transform = moveScaleTransform
        }
        
        let moveTopTransform = CGAffineTransform(translationX: 0, y: -100)
        let rotateTransform = CGAffineTransform(rotationAngle: 360)
        let moveRotateTransform = rotateTransform.concatenating(moveTopTransform)
        closeButton.transform = moveRotateTransform

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        rateButtons.forEach { rateButton in
            UIView.animate(
                withDuration: 0.4,
                delay: Double(rateButtons.index(of: rateButton)!) * 0.08,
                usingSpringWithDamping: 0.5,
                initialSpringVelocity: 0.6,
                options: [],
                animations: {
                    rateButton.alpha = 1.0
                    rateButton.transform = CGAffineTransform.identity
                },
                completion: nil
            )
        }
        
        UIView.animate(withDuration: 0.6) {
            self.closeButton.transform = .identity
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
