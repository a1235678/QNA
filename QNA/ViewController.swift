//
//  ViewController.swift
//  QNA
//
//  Created by zero plus on 2016/10/26.
//  Copyright © 2016年 zero plus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    struct Qna{
        var question = ""
        var answer = ""
        var img: UIImage!
    }
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var answerImage: UIImageView!
    var count = 0
    var qnaArray = [Qna(question: "史上最棒的手機？", answer: "iPhone", img: #imageLiteral(resourceName: "iPhone")),
                    Qna(question: "史上最棒手機的發明人？", answer: "Steve Jobs", img: #imageLiteral(resourceName: "JOBS")),
                    Qna(question: "iPhone所使用的作業系統？", answer: "IOS", img: #imageLiteral(resourceName: "IOS")),
                    Qna(question: "IOS開發所使用的最新程式語言？", answer: "Swift", img: #imageLiteral(resourceName: "SWIFT")),
                    Qna(question: "IOS開發工具？", answer: "Xcode", img: #imageLiteral(resourceName: "XCODE")),
                    Qna(question: "IOS開發必備的硬體設備？", answer: "MacBook", img: #imageLiteral(resourceName: "MACBook")),
                    Qna(question: "如果想學IOS APP開發，要找誰比較好？", answer: "彼得潘", img: #imageLiteral(resourceName: "PETER")),
                    Qna(question: "如果在IOS APP開發上，遇到難題想找人請教，可以找誰？", answer: "彼得潘", img: #imageLiteral(resourceName: "PETER")),
                    Qna(question: "誰會是你一輩子的朋友？", answer: "彼得潘", img: #imageLiteral(resourceName: "PETER")),
                    Qna(question: "上彼得潘的課，作業的繳交期限是？", answer: "一輩子", img: #imageLiteral(resourceName: "FOREVER"))]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nextQuestion()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        count += 1
        if count == 10{
            count = 0
        }
        nextQuestion()
    }
    

    @IBAction func showButton(_ sender: UIButton) {
        answerLabel.isHidden = false
        answerImage.isHidden = false
    }
    
    func nextQuestion(){
        questionLabel.text = qnaArray[count].question
        answerLabel.text = qnaArray[count].answer
        answerImage.image = qnaArray[count].img
        
        countLabel.text = "第\(count+1)題"
        answerLabel.isHidden = true
        answerImage.isHidden = true
    }

}

