//
//  File.swift
//  
//
//  Created by 이영빈 on 2023/06/02.
//

import AVFoundation

struct AudioTuner: AespaSessionTuning {
    let needTransaction = true
    var isMuted: Bool // default zoom factor
    
    func tune<T: AespaCoreSessionRepresentable>(_ session: T) throws {
        if isMuted {
            session.removeAudioInput()
        } else {
            try session.addAudioInput()
        }
    }
}
