//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Namala Damodar on 18/06/14.
//  Copyright (c) 2014 Namala Damodar. All rights reserved.
//

import UIKit
import QuartzCore
class ViewController: UIViewController {
    var progressDemo = UIProgressView();

    @IBAction func getSwitchAction(sender : UISwitch) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor();
        
        //uibuttom
        let button   = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        button.frame = CGRectMake(100, 300, 100, 320)
        button.backgroundColor = UIColor.greenColor()
        button.setTitle("Test Button", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
        //UILAbel
        
        
        var label = UILabel(frame: CGRectMake(0, 0, 200, 21))
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Center
        label.text = "I'am a test label"
        self.view.addSubview(label)
        
        //DatePicker

        
        let datePick = UIDatePicker(frame :CGRectMake(0, 0, 100, 200));
        datePick.setDate(NSDate(), animated: true);
        self.view.addSubview(datePick);
        datePick.datePickerMode = UIDatePickerMode.DateAndTime;
        
        //UISwitch

        let switch1 = UISwitch(frame: CGRectMake(0, 300, 100, 200));
        switch1.addTarget(self, action: "switchAction:", forControlEvents: UIControlEvents.ValueChanged);
        self.view.addSubview(switch1);
        
        
        
        //UIslider
    
        let sliderV = UISlider(frame: CGRectMake(0, 200, 100, 30))
        sliderV.addTarget(self, action: "getActionSlider:", forControlEvents: UIControlEvents.ValueChanged);
        self.view.addSubview(sliderV);
       
        
        //UIImageView

        
        let imageViews = UIImageView(frame :CGRectMake(0, 0, 100, 200));
        
        imageViews.backgroundColor = UIColor
        .whiteColor()
        imageViews.image = UIImage(named: "one.png");
       
        self.view.addSubview(imageViews);
        
        //TapGesture

        let sipeAction = UITapGestureRecognizer(target: self, action: "getSwiper:");
        imageViews.addGestureRecognizer(sipeAction);
        sipeAction.numberOfTouches()
        sipeAction.numberOfTouchesRequired = 1
        imageViews.userInteractionEnabled=true;
        
        let actvityDemo = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.Gray);
        
        //Activityindicatoeview

        actvityDemo.backgroundColor = UIColor.grayColor()
        actvityDemo.startAnimating()
        self.view.addSubview(actvityDemo);
        actvityDemo.center = self.view.center;
        
        //Progress view

        
        progressDemo = UIProgressView(progressViewStyle: UIProgressViewStyle.Default);
    var timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("getTime:"), userInfo: nil, repeats: true)
        progressDemo.progress = 0;
        
        progressDemo.frame = CGRectMake(190, 190, 200, 24);
       // progressDemo.layer.borderColor = UIColor.orangeColor().CGColor;
        self.view.addSubview(progressDemo);
       // progressDemo.layer.borderColor = UIColor.brownColor().CGColor
        progressDemo.backgroundColor = UIColor.blackColor()
        progressDemo.progressTintColor = UIColor.blueColor()
        progressDemo.center = self.view.center
        progressDemo.setProgress(0.1, animated: true);
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //Imageview Touch Action

    func getSwiper(sender : UITapGestureRecognizer){
        println("Tapped");
        
    }
    //Slider Action

    func getActionSlider(sender :UISlider){
        
        println(sender.value);
        
        
    }
    //NSTimer Action increase progressbarr

    func getTime(sender:Int){
       var var11:(Float) = Float(0.2)  //Int is converted to Double
        progressDemo.progress = (progressDemo.progress + var11)
        progressDemo.setProgress(progressDemo.progress, animated: true);
        if(progressDemo.progress==1){
            progressDemo.progress = 0 ;
        }
        println( (progressDemo.progress))
//
        
    }
    
    //switch Action

    
    func switchAction(sender : UISwitch) {
    
    
        if(sender.on){
            println("ON")
        }
        else{
            println("Off");
        }
    }
    //Button Action

    func buttonAction(sender:UIButton){
        
        println("button Clicked");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

