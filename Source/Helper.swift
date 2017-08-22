import UIKit
import AVFoundation

struct Helper {
  
  static func rotationTransform() -> CGAffineTransform {
    switch UIDevice.current.orientation {
    case .landscapeLeft:
      return CGAffineTransform(rotationAngle: CGFloat.pi * 2.0)
    case .landscapeRight:
      return CGAffineTransform(rotationAngle: -(CGFloat.pi * 2.0))
    case .portraitUpsideDown:
      return CGAffineTransform(rotationAngle: CGFloat.pi)
    default:
      return CGAffineTransform.identity
    }
  }
  
  static func videoOrientation() -> AVCaptureVideoOrientation {
    switch UIApplication.shared.statusBarOrientation {
    case .landscapeLeft:
      return .landscapeLeft
    default:
      return .landscapeRight
    }
  }
}
