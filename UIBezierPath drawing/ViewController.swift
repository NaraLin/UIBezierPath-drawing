//
//  ViewController.swift
//  UIBezierPath drawing
//
//  Created by 林靖芳 on 2024/4/1.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //放入參考圖
//        let crayonImageView = UIImageView(image: UIImage(named: "小新"))
//        crayonImageView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
//        crayonImageView.alpha = 0.2
//        view.addSubview(crayonImageView)
//        
        
        let crayonPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 400, height: 400))
        let crayonLayer = CAShapeLayer()
        crayonLayer.path = crayonPath.cgPath
        crayonLayer.strokeColor = UIColor.black.cgColor
        crayonLayer.fillColor = UIColor.clear.cgColor
        crayonLayer.lineWidth = 4
        view.layer.addSublayer(crayonLayer)
        
        func growHead(){
            //頭
            let head = UIBezierPath()
            head.move(to: CGPoint(x: 73, y: 172))
            head.addQuadCurve(to: CGPoint(x: 64, y: 208), controlPoint: CGPoint(x: 66, y: 185))
            head.addQuadCurve(to: CGPoint(x: 24, y: 311), controlPoint: CGPoint(x: -30, y: 250))
            head.addQuadCurve(to: CGPoint(x: 113, y: 346), controlPoint: CGPoint(x: 45, y: 331))
            head.addQuadCurve(to: CGPoint(x: 206, y: 340), controlPoint: CGPoint(x: 180, y: 346))
            head.addQuadCurve(to: CGPoint(x: 251, y: 329), controlPoint: CGPoint(x: 210, y: 340))
            head.addQuadCurve(to: CGPoint(x: 310, y: 293), controlPoint: CGPoint(x: 280, y: 325))
            head.addQuadCurve(to: CGPoint(x: 337, y: 185), controlPoint: CGPoint(x: 334, y: 278))
            head.addQuadCurve(to: CGPoint(x: 73, y: 172), controlPoint: CGPoint(x: 220, y: 38))
            
            let headLayer = CAShapeLayer()
            headLayer.path = head.cgPath
            headLayer.strokeColor = UIColor.black.cgColor
            headLayer.lineWidth = 5
            headLayer.fillColor = UIColor(red: 255/255, green: 202/255, blue: 181/255, alpha: 255/255).cgColor
            view.layer.addSublayer(headLayer)
        }
                
        
        func growHair(){
            //頭髮
            let hairPath = UIBezierPath()
            hairPath.move(to: CGPoint(x: 128, y: 114))
            hairPath.addQuadCurve(to: CGPoint(x: 212, y: 98), controlPoint: CGPoint(x: 173, y: 92))
            hairPath.addQuadCurve(to: CGPoint(x: 250, y: 105), controlPoint: CGPoint(x: 245, y: 98))
            hairPath.addQuadCurve(to: CGPoint(x: 338, y: 175), controlPoint: CGPoint(x: 303, y: 115))
            hairPath.addQuadCurve(to: CGPoint(x: 336, y: 183), controlPoint: CGPoint(x: 339, y: 179))
            hairPath.addLine(to: CGPoint(x: 316, y: 180))
            hairPath.addQuadCurve(to: CGPoint(x: 268, y: 124), controlPoint: CGPoint(x: 300, y: 140))
            hairPath.addQuadCurve(to: CGPoint(x: 143, y: 127), controlPoint: CGPoint(x: 178, y: 118))
            hairPath.close()
            let hairlayer = CAShapeLayer()
            hairlayer.path = hairPath.cgPath
            hairlayer.lineWidth = 3
            hairlayer.fillColor = UIColor.black.cgColor
            hairlayer.strokeColor = UIColor.black.cgColor
            view.layer.addSublayer(hairlayer)
        }
        
        
        func growLeftEyeBrow(){
            //左眉毛
            let eyebrows = UIBezierPath()
            eyebrows.move(to: CGPoint(x: 71, y: 162))
            eyebrows.addQuadCurve(to: CGPoint(x: 97, y: 122), controlPoint: CGPoint(x: 96, y: 120))
            eyebrows.addQuadCurve(to: CGPoint(x: 153, y: 140), controlPoint: CGPoint(x: 123, y: 90))
            eyebrows.addQuadCurve(to: CGPoint(x: 135, y: 153), controlPoint: CGPoint(x: 160, y: 162))
            eyebrows.addQuadCurve(to: CGPoint(x: 117, y: 133), controlPoint: CGPoint(x: 126, y: 145))
            eyebrows.addQuadCurve(to: CGPoint(x: 90, y: 172), controlPoint: CGPoint(x: 105, y: 150))
            eyebrows.addQuadCurve(to: CGPoint(x: 76, y: 173), controlPoint: CGPoint(x: 87, y: 175))
            eyebrows.addQuadCurve(to: CGPoint(x: 72, y: 168), controlPoint: CGPoint(x: 70, y: 170))
            eyebrows.addQuadCurve(to: CGPoint(x: 70, y: 162), controlPoint: CGPoint(x: 69, y: 169))
            
            
            let eyebrowsLayer = CAShapeLayer()
            eyebrowsLayer.path = eyebrows.cgPath
            eyebrowsLayer.strokeColor = UIColor.black.cgColor
            eyebrowsLayer.lineWidth = 4
            view.layer.addSublayer(eyebrowsLayer)
            
            
        }
        
        
        
        func growRightEyeBrow(){
            //右眉毛
            let rightEyeBrows = UIBezierPath()
            rightEyeBrows.move(to: CGPoint(x: 182, y: 127))
            rightEyeBrows.addQuadCurve(to: CGPoint(x: 269, y: 132), controlPoint: CGPoint(x: 232, y: 60))
            rightEyeBrows.addQuadCurve(to: CGPoint(x: 248, y: 139), controlPoint: CGPoint(x: 265, y: 145))
            rightEyeBrows.addQuadCurve(to: CGPoint(x: 228, y: 117), controlPoint: CGPoint(x: 240, y: 130))
            rightEyeBrows.addQuadCurve(to: CGPoint(x: 197, y: 140), controlPoint: CGPoint(x: 216, y: 125))
            rightEyeBrows.addQuadCurve(to: CGPoint(x: 182, y: 127), controlPoint: CGPoint(x: 175, y: 145))
            
            let rightEyeBrowsLayer = CAShapeLayer()
            rightEyeBrowsLayer.path = rightEyeBrows.cgPath
            rightEyeBrowsLayer.strokeColor = UIColor.black.cgColor
            rightEyeBrowsLayer.lineWidth = 4
            view.layer.addSublayer(rightEyeBrowsLayer)
            
        }
        
        
        
        func growMouth(){
            //嘴巴
            let mouth = UIBezierPath()
            mouth.move(to: CGPoint(x: 107, y: 329))
            mouth.addQuadCurve(to: CGPoint(x: 135, y: 317), controlPoint: CGPoint(x: 118, y: 309))
            
            let mouthLayer = CAShapeLayer()
            mouthLayer.path = mouth.cgPath
            mouthLayer.strokeColor = UIColor.black.cgColor
            mouthLayer.lineWidth = 5
            mouthLayer.fillColor = UIColor(red: 255/255, green: 202/255, blue: 181/255, alpha: 255/255).cgColor
            mouthLayer.lineCap = .round
            view.layer.addSublayer(mouthLayer)
            
        }
        
        
        
        func growEar(){
            //耳朵
            let ear = UIBezierPath()
            ear.move(to: CGPoint(x: 331, y: 184))
            ear.addQuadCurve(to: CGPoint(x: 386, y: 205), controlPoint: CGPoint(x: 361, y: 144))
//            ear.addLine(to: CGPoint(x: 337, y: 185))
            ear.close()
            
            let earLayer = CAShapeLayer()
            earLayer.path = ear.cgPath
            earLayer.strokeColor = UIColor.black.cgColor
            earLayer.lineWidth = 5
            earLayer.fillColor = UIColor(red: 255/255, green: 202/255, blue: 181/255, alpha: 255/255).cgColor
            view.layer.addSublayer(earLayer)
            
            
        }
        
        func growLeftEye(){
            //左眼
            let leftEye = UIBezierPath()
            leftEye.move(to: CGPoint(x: 86, y: 202))
            leftEye.addQuadCurve(to: CGPoint(x: 133, y: 183), controlPoint: CGPoint(x: 110, y: 185))
            
            
            let leftEyeLayer = CAShapeLayer()
            leftEyeLayer.path = leftEye.cgPath
            leftEyeLayer.strokeColor = UIColor.black.cgColor
            leftEyeLayer.lineWidth = 5
            leftEyeLayer.lineCap = .round
            
            view.layer.addSublayer(leftEyeLayer)
            
            
        }
        
        
        func growRightEye(){
            //右眼
            let rightEye = UIBezierPath()
            rightEye.move(to: CGPoint(x: 190, y: 170))
            rightEye.addQuadCurve(to: CGPoint(x: 237, y: 170), controlPoint: CGPoint(x: 212, y: 167))
            
            
            let rightEyeLayer = CAShapeLayer()
            rightEyeLayer.path = rightEye.cgPath
            rightEyeLayer.strokeColor = UIColor.black.cgColor
            rightEyeLayer.lineWidth = 5
            rightEyeLayer.lineCap = .round
            
            view.layer.addSublayer(rightEyeLayer)
            
        }
        
        func growHand(){
            
            //手-1
            let hand = UIBezierPath()
            hand.move(to: CGPoint(x: 307, y: 205))
            hand.addQuadCurve(to: CGPoint(x: 288, y: 212), controlPoint: CGPoint(x: 299, y: 211))
            hand.addQuadCurve(to: CGPoint(x: 283, y: 199), controlPoint: CGPoint(x: 284, y: 203))
            hand.addQuadCurve(to: CGPoint(x: 297, y: 199), controlPoint: CGPoint(x: 280, y: 180))
            
            
            let handLayer = CAShapeLayer()
            handLayer.path = hand.cgPath
            handLayer.strokeColor = UIColor.black.cgColor
            handLayer.lineWidth = 5
            handLayer.fillColor = UIColor(red: 255/255, green: 202/255, blue: 181/255, alpha: 255/255).cgColor
            view.layer.addSublayer(handLayer)
            
            //手-2
            let hand2 = UIBezierPath()
            hand2.move(to: CGPoint(x: 283, y: 201))
            hand2.addQuadCurve(to: CGPoint(x: 264, y: 187), controlPoint: CGPoint(x: 208, y: 224))
            hand2.addQuadCurve(to: CGPoint(x: 275, y: 171), controlPoint: CGPoint(x: 205, y: 146))
            
            
            
            let hand2Layer = CAShapeLayer()
            hand2Layer.path = hand2.cgPath
            hand2Layer.strokeColor = UIColor.black.cgColor
            hand2Layer.lineWidth = 5
            hand2Layer.fillColor = UIColor(red: 255/255, green: 202/255, blue: 181/255, alpha: 255/255).cgColor
            view.layer.addSublayer(hand2Layer)
            
            //手-3
            let hand3 = UIBezierPath()
            hand3.move(to: CGPoint(x: 307, y: 205))
            hand3.addQuadCurve(to: CGPoint(x: 314, y: 179), controlPoint: CGPoint(x: 314, y: 192))
            hand3.move(to: CGPoint(x: 307, y: 205))
            hand3.addQuadCurve(to: CGPoint(x: 299, y: 156), controlPoint: CGPoint(x: 320, y: 175))
            hand3.addLine(to: CGPoint(x: 286, y: 163))
            
            let hand3Layer = CAShapeLayer()
            hand3Layer.path = hand3.cgPath
            hand3Layer.strokeColor = UIColor.black.cgColor
            hand3Layer.lineWidth = 5
            hand3Layer.fillColor = UIColor(red: 255/255, green: 202/255, blue: 181/255, alpha: 255/255).cgColor
            hand3Layer.lineCap = .round
            view.layer.addSublayer(hand3Layer)
            
            
            
            //手-4
            let hand4 = UIBezierPath()
            hand4.move(to: CGPoint(x: 296, y: 168))
            hand4.addQuadCurve(to: CGPoint(x: 270, y: 163), controlPoint: CGPoint(x: 285, y: 154))
            hand4.addQuadCurve(to: CGPoint(x: 296, y: 168), controlPoint: CGPoint(x: 298, y: 184))
            
            
            let hand4Layer = CAShapeLayer()
            hand4Layer.path = hand4.cgPath
            let transform1 = CGAffineTransform.identity.translatedBy(x: 89, y: -18).scaledBy(x: 0.7, y: 1).rotated(by: Double.pi / 180 * 4)
            hand4Layer.setAffineTransform(transform1)
            hand4Layer.strokeColor = UIColor.black.cgColor
            hand4Layer.lineWidth = 5
            hand4Layer.fillColor = UIColor(red: 255/255, green: 202/255, blue: 181/255, alpha: 255/255).cgColor
            view.layer.addSublayer(hand4Layer)
            
            
            //手-5
            let hand5 = UIBezierPath()
            hand5.move(to: CGPoint(x: 277, y: 163))
            hand5.addQuadCurve(to: CGPoint(x: 296, y: 164), controlPoint: CGPoint(x: 277, y: 145))
            hand5.addQuadCurve(to: CGPoint(x: 277, y: 163), controlPoint: CGPoint(x: 295, y: 170))
            
            
            let hand5Layer = CAShapeLayer()
            hand5Layer.path = hand5.cgPath
            let transform2 = CGAffineTransform.identity.translatedBy(x: 54, y: -68).rotated(by: Double.pi / 180 * 15)
            hand5Layer.setAffineTransform(transform2)
            hand5Layer.strokeColor = UIColor.black.cgColor
            hand5Layer.lineWidth = 5
            hand5Layer.fillColor = UIColor(red: 255/255, green: 202/255, blue: 181/255, alpha: 255/255).cgColor
            view.layer.addSublayer(hand5Layer)
            
        }

        
        
        func growBody(){
            //身體
            let body = UIBezierPath()
            body.move(to: CGPoint(x: 316, y: 179))
            body.addQuadCurve(to: CGPoint(x: 395, y: 210), controlPoint: CGPoint(x: 395, y: 210))
            body.addQuadCurve(to: CGPoint(x: 379, y: 399), controlPoint: CGPoint(x: 368, y: 336))
            body.addQuadCurve(to: CGPoint(x: 113, y: 398), controlPoint: CGPoint(x: 113, y: 398))
            body.addQuadCurve(to: CGPoint(x: 115, y: 348), controlPoint: CGPoint(x: 115, y: 348))
            body.addQuadCurve(to: CGPoint(x: 310, y: 295), controlPoint: CGPoint(x: 235, y: 352))
            body.addQuadCurve(to: CGPoint(x: 335, y: 232), controlPoint: CGPoint(x: 335, y: 232))
            body.addQuadCurve(to: CGPoint(x: 308, y: 206), controlPoint: CGPoint(x: 308, y: 206))
            
            let bodyLayer = CAShapeLayer()
            bodyLayer.path = body.cgPath
            bodyLayer.strokeColor = UIColor.black.cgColor
            bodyLayer.lineWidth = 4
            bodyLayer.fillColor = UIColor(red: 224/255, green: 66/255, blue: 65/255, alpha: 255/255).cgColor
            view.layer.addSublayer(bodyLayer)
            
            
            
            
            //身體-2
            let body2 = UIBezierPath()
            body2.move(to: CGPoint(x: 148, y: 373))
            body2.addQuadCurve(to: CGPoint(x: 148, y: 399), controlPoint: CGPoint(x: 148, y: 399))
            
            let body2Layer = CAShapeLayer()
            body2Layer.path = body2.cgPath
            body2Layer.strokeColor = UIColor.black.cgColor
            body2Layer.lineWidth = 4
            view.layer.addSublayer(body2Layer)
            
        }
        
        growHead()
        growLeftEyeBrow()
        growRightEyeBrow()
        growHair()
        growBody()
        growHand()
        growEar()
        growLeftEye()
        growRightEye()
        growMouth()
        
        
        
        
    }
    
}
    
#Preview {
    UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
}

 
