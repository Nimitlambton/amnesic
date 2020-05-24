//
//  ViewController.swift
//  amnesic
//
//  Created by Nimit on 2020-05-15.
//  Copyright © 2020 Nimit. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController {

    //Array to store images
    var tagImages : [UIImage] = []
    
    var notflip : Bool = true

  var imgValue : Int? = nil
    var imgvalue2 : Int?  = nil
    
    private let titleLabel: UILabel = {
        
           let label = UILabel()
            label.text = "Amnesic"
            label.font = UIFont(name: "ChalkboardSE-Bold", size: 36)
            label.textColor = .black
             label.translatesAutoresizingMaskIntoConstraints = false
            return label
            
        }()
    
    
    private let clearButton : UIButton = {
        
        let but = UIButton()
        but.setTitle("clear", for: .normal)
        but.tintColor = .green
        but.backgroundColor = .red
        but.addTarget(self, action: #selector(handelclear), for: .touchUpInside)
       
        return but
        
        
    }()

    
    let imageView100 = UIImageView(image: #imageLiteral(resourceName: "1.jpg"))
    let imageView200  =  UIImageView(image: #imageLiteral(resourceName: "200") )
   
    let background100 = UIImageView(image: #imageLiteral(resourceName: "0"))
    let background200 = UIImageView(image: #imageLiteral(resourceName: "0"))
    
    let imageView300 = UIImageView(image: #imageLiteral(resourceName: "400"))
    
    
    
    let background300 = UIImageView(image: #imageLiteral(resourceName: "0"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        view.backgroundColor = .white
        
        
        //titelLabel
        view.addSubview(titleLabel)
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
        
        
        
        view.addSubview(imageView100)
        
        imageView100.translatesAutoresizingMaskIntoConstraints = false
        
        imageView100.topAnchor.constraint(equalTo: titleLabel.bottomAnchor ,constant: 30).isActive = true
        //Right anchor
        imageView100.rightAnchor.constraint(equalTo: titleLabel.rightAnchor , constant: -150).isActive = true
       
    
        //for dimesnsions
        imageView100.widthAnchor.constraint(equalToConstant: 59).isActive = true
        imageView100.heightAnchor.constraint(equalToConstant: 59).isActive = true
        
        
//        __//img2______________________
        
        view.addSubview(imageView200)
       imageView200.translatesAutoresizingMaskIntoConstraints = false
            

//        imageview2.alpha = 1
//
        imageView200.topAnchor.constraint(equalTo: titleLabel.bottomAnchor , constant: 30).isActive = true
        
        imageView200.rightAnchor.constraint(equalTo: titleLabel.rightAnchor , constant:  -80 ).isActive = true
        
        //for dimesnsions
        imageView200.widthAnchor.constraint(equalToConstant: 59).isActive = true
        imageView200.heightAnchor.constraint(equalToConstant: 59).isActive = true
        
        
        
        view.addSubview(imageView300)
            
            imageView300.translatesAutoresizingMaskIntoConstraints = false
            
            imageView300.widthAnchor.constraint(equalToConstant: 59).isActive = true
            imageView300.heightAnchor.constraint(equalToConstant: 59).isActive = true
            
            
            imageView300.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30).isActive = true
            imageView300.rightAnchor.constraint(equalTo: titleLabel.rightAnchor).isActive = true
        
        
        
//
//
//      //  let tap = UITapGestureRecognizer(target: self, action: #selector("handleTap"))
    
        
        
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(handel1))
      
        imageView100.isUserInteractionEnabled = true
        imageView100.addGestureRecognizer(tap1)
        
         let tap2 = UITapGestureRecognizer(target: self, action: #selector(handel2))
        imageView200.isUserInteractionEnabled = true
        imageView200.addGestureRecognizer(tap2)

    
        let tap3 = UITapGestureRecognizer(target: self, action: #selector(handel3))
        background300.isUserInteractionEnabled = true
        background300.addGestureRecognizer(tap3)
        
        
        
        
        
        //covering image
        
        view.addSubview(background100)
        
        
        background100.translatesAutoresizingMaskIntoConstraints = false
        background100.widthAnchor.constraint(equalToConstant: 59).isActive = true
        background100.heightAnchor.constraint(equalToConstant: 59).isActive = true
        
        
        background100.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,  constant: 30).isActive = true

        background100.rightAnchor.constraint(equalTo: titleLabel.rightAnchor ,constant:  -80).isActive = true
       
       
        view.addSubview(background200)
        
        
        background200.translatesAutoresizingMaskIntoConstraints = false
              background200.widthAnchor.constraint(equalToConstant: 59).isActive = true
              background200.heightAnchor.constraint(equalToConstant: 59).isActive = true
              
              
              background200.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,  constant: 30).isActive = true

              background200.rightAnchor.constraint(equalTo: titleLabel.rightAnchor ,constant:  -150).isActive = true

       
        
        view.addSubview(background300)
              
              background300.translatesAutoresizingMaskIntoConstraints = false
              
              background300.widthAnchor.constraint(equalToConstant: 59).isActive = true
              background300.heightAnchor.constraint(equalToConstant: 59).isActive = true
              
              
              background300.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30).isActive = true
              background300.rightAnchor.constraint(equalTo: titleLabel.rightAnchor).isActive = true
     

        
        
        
        //Clearbutton
        
        view.addSubview(clearButton)
        clearButton.translatesAutoresizingMaskIntoConstraints = false
        clearButton.widthAnchor.constraint(equalToConstant: 59).isActive = true
        clearButton.heightAnchor.constraint(equalToConstant: 59).isActive = true
        
        clearButton.topAnchor.constraint(equalTo: imageView100.bottomAnchor, constant: 260).isActive = true
                    
        clearButton.rightAnchor.constraint(equalTo: imageView100.rightAnchor , constant:80 ).isActive = true
        
    
    }
    
    
    

    
    
    @objc func handel1() {

        UIView.animate(withDuration: 0.5 , animations: {
            self.background200.alpha = 0}) { _ in
                
                
                
                
                  
         }
    }
   
    @objc func handel2() {

        UIView.animate(withDuration: 0.5 , animations: {
               self.background100.alpha = 0}) { _ in

    }
    }
    
    
    
    
    
      
       @objc func handel3() {
     
          
        
        UIView.animate(withDuration: 0.5 , animations: {
                     self.background300.alpha = 0}) { _ in

          }

       }
    
    
    
    
    
    
    
    
    
    
   
        
        
      
        
        
        
        
        
         

       
    
    
    
    
    func ismatch() {
        
        
        if (imgValue != nil) &&  (imgvalue2 != nil)  {
            
            print(imgValue)
            print(imgvalue2)
            
            
            if (imgValue! - imgvalue2!  == 0){
                
            
                
                imageView100.alpha = 0
                imageView200.alpha = 0
                            
            
            }
            else {

                UIView.animate(withDuration: 1.0 , animations: {
                          self.background300.alpha = 0}) { _ in
                           
                            
                            
                            self.background100.alpha = 1
                            self.background200.alpha = 2
                            self.background300.alpha = 3
                          
                          
                          
                      }

            }
            
            
            
        }

    }
    
    

    
    

   @objc func handelclear(){
       
       
       imageView100.alpha = 1
       imageView200.alpha = 1
       imageView300.alpha = 1
       
       
       
       background100.alpha = 1
       background200.alpha = 1
       background300.alpha = 1
       
   }
    
    

}



  

