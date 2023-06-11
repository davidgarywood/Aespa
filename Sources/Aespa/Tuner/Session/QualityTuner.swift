//
//  QualityTuner.swift
//  
//
//  Created by 이영빈 on 2023/06/02.
//

import AVFoundation

struct QualityTuner: AespaSessionTuning {
    let needTransaction = true
    var videoQuality: AVCaptureSession.Preset

    func tune<T: AespaCoreSessionRepresentable>(_ session: T) {
        session.setVideoQuality(to: self.videoQuality)
    }
}
