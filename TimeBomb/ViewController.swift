//
//  ViewController.swift
//  TimeBomb
//
//  Created by jeff on 2020/04/10.
//  Copyright © 2020 TakHyun Jung. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var holderView = HolderView()
    var startSound: AVAudioPlayer!
    var alarmSound: AVAudioPlayer!
    var mTimer: Timer?
    var number = 480
    
    @IBOutlet weak var timeLeft: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeBombPlayer()
        initializePlayer()
        btn.backgroundColor = UIColor.red
        btn.layer.cornerRadius = 20
        holderView.addStartRect()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addHolderView()
    }
    
    func addHolderView() {
        let width: CGFloat = 200.0
        let height: CGFloat = 200.0
        holderView.frame = CGRect(x: view.bounds.width / 2 ,
                                  y: view.bounds.height / 2,
                                  width: width,
                                  height: height)
        holderView.backgroundColor = UIColor.clear
        holderView.center = self.view.center
        view.addSubview(holderView)
    }
    
    @IBAction func start(_ sender: UIButton) {
        self.alarmSound?.play()
        holderView.addRect()
        if let timer = mTimer {
            //timer 객체가 nil 이 아닌경우에는 invalid 상태에만 시작한다
            if !timer.isValid {
                /** 1초마다 timerCallback함수를 호출하는 타이머 */
                mTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCallback), userInfo: nil, repeats: true)
            }
        }else{
            //timer 객체가 nil 인 경우에 객체를 생성하고 타이머를 시작한다
            /** 1초마다 timerCallback함수를 호출하는 타이머 */
            mTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCallback), userInfo: nil, repeats: true)
        }
    }
    
    @objc func timerCallback(){
        var min: String
        var sec: String
        //8분 타이머 소진 시 노래재생
        if number == 0 {
            //노래재생
            self.startSound?.play()
            //타이머 재시작
            number = 480
            holderView.drawArc()
        }
        number -= 1
        min = String(number / 60)
        sec = String(format: "%02d",number % 60 )
        timeLeft.text = min + ":" + sec
    }
    
    func initializePlayer(){
        guard let soundAsset: NSDataAsset = NSDataAsset(name:"Sound1")else{
            print("음원 파일 에셋을 가져올 수 없습니다")
            return
        }
        do{
            try self.startSound = AVAudioPlayer(data:soundAsset.data)
            self.startSound.delegate=self
        }
        catch let error as NSError{
            print("플레이어 초기화 실패")
            print("코드:\(error.code), 메시지:\(error.localizedDescription)")
        }
    }
    
    func initializeBombPlayer(){
        guard let soundAsset: NSDataAsset = NSDataAsset(name:"BombTime")else{
            print("음원 파일 에셋을 가져올 수 없습니다")
            return
        }
        do{
            try self.alarmSound = AVAudioPlayer(data:soundAsset.data)
            self.alarmSound.delegate=self
        }
        catch let error as NSError{
            print("플레이어 초기화 실패")
            print("코드:\(error.code), 메시지:\(error.localizedDescription)")
        }
    }
    
}
