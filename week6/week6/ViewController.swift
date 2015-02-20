//
//  ViewController.swift
//  week6
//
//  Created by iStudents on 2/20/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import AssetsLibrary

class ViewController:
    
    
UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    var context: CIContext!
    var filter: CIFilter!
    var beginImge: CIImage!
    var orientation: UIImageOrientation = .Up
    
    
    @IBOutlet weak var amoutSlider: UISlider!
    
    @IBOutlet weak var imageView: UIImageView!
   
   //.................................................................................
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fileURL = NSBundle.mainBundle().URLForResource("image2", withExtension: "png")
        beginImge = CIImage(contentsOfURL: fileURL)
        filter = CIFilter(name: "CISepiaTone")
        filter.setValue(beginImge, forKey: kCIInputImageKey)
        filter.setValue(0.5, forKey: kCIInputIntensityKey)
        let outputImage = filter.outputImage
        context = CIContext(options: nil)
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        let newImage = UIImage(CGImage: cgimg)
        self.imageView.image = newImage
        self.logAllFilters()
    }
//....................................................................
    
    
    @IBAction func mountSliderValueChanged(sender: UISlider) {
        let sliderValue = sender.value
        let outputImage = self.oldPhoto(beginImge,withAmount: sliderValue)
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        let newImage = UIImage(CGImage: cgimg, scale: 1, orientation: orientation)
        self.imageView.image = newImage
        
    }
    
 //..........................................................................
    
    
    @IBAction func savePhoto(sender: AnyObject) {
        let imageToSave = filter.outputImage
        
        let softwareContext = CIContext(options: [kCIContextUseSoftwareRenderer:true])
        
        let cgimg = softwareContext.createCGImage(imageToSave, fromRect: imageToSave.extent())
        
        let library = ALAssetsLibrary()
        library.writeImageToSavedPhotosAlbum(cgimg,metadata:imageToSave.properties(),completionBlock:nil)
    }
    
//............................................................................
    
    
    @IBAction func loadPhoto(sender: AnyObject) {
        let pickerC = UIImagePickerController()
        pickerC.delegate = self
        self.presentViewController(pickerC, animated: true, completion: nil)
    }
    
 //...........................................................................
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingMediaWithInfo info:NSDictionary!) {
        self.dismissViewControllerAnimated(true, completion: nil);
        let gotImage = info[UIImagePickerControllerOriginalImage] as UIImage
        
        beginImge = CIImage(image: gotImage)
        orientation = gotImage.imageOrientation
        filter.setValue(beginImge, forKey: kCIInputImageKey)
        self.mountSliderValueChanged(amoutSlider)
        
    }
//...............................................................................
    
    func logAllFilters(){
        let properties = CIFilter.filterNamesInCategory(kCICategoryBuiltIn)
        
        println(properties)
        
        for filterName:AnyObject in properties{
            let fltr = CIFilter(name: filterName as String)
            println(fltr.attributes())
        }
    }
    
//...............................................................................
    
    func oldPhoto(img: CIImage, withAmount intensity: Float) -> CIImage {
        
        let sepia = CIFilter(name: "CISepiaTone")
        sepia.setValue(img, forKey: kCIInputImageKey)
        sepia.setValue(intensity, forKey: "inputIntensity")
        
        let random = CIFilter(name: "CIRandomGenerator")
        
        let lighten = CIFilter(name: "CIColorControls")
        lighten.setValue(random.outputImage, forKey: kCIInputImageKey)
        lighten.setValue(1 - intensity, forKey: "inputBrightness")
        lighten.setValue(0, forKey: "inputSaturation")
        
        let croppedImage=lighten.outputImage.imageByCroppingToRect(beginImge.extent())
        
        let composite = CIFilter(name: "CIHardLightBlendMode")
        composite.setValue(sepia.outputImage, forKey: kCIInputImageKey)
        composite.setValue(croppedImage, forKey: kCIInputBackgroundImageKey)
        
        let vignette = CIFilter(name: "CIVignette")
        vignette.setValue(composite.outputImage, forKey: kCIInputImageKey)
        vignette.setValue(intensity * 2, forKey: "inputIntensity")
        vignette.setValue(intensity * 3, forKey: "inputRadius")
        
        return vignette.outputImage
    }
    
    
    
//.................................................................................
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

