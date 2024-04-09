import XCTest
@testable import ColorCube
import SwiftUI

final class ColorCubeTests: XCTestCase {
  @available(iOS 16.0, *)
  func testExample() throws {
    // XCTest Documentation
    // https://developer.apple.com/documentation/xctest
    
    // Defining Test Cases and Test Methods
    // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    
    let file = try FileManager.default.contentsOfDirectory(at: .picturesDirectory, includingPropertiesForKeys: nil)
      .filter({ $0.pathExtension == "png"})
      .randomElement()!
    let img = NSImage(contentsOf: file)!
    let c = CCColorCube()
    let egg = c.extractColors(from: img, flags: [.avoidBlack, .avoidWhite, .orderByBrightness, .onlyBrightColors], count: 5)
    egg?.forEach({ color in
      print(color.hexString)
    })
  }
}


extension NSColor {

    var hexString: String {
        let red = Int(round(self.redComponent * 0xFF))
        let green = Int(round(self.greenComponent * 0xFF))
        let blue = Int(round(self.blueComponent * 0xFF))
        let hexString = NSString(format: "#%02X%02X%02X", red, green, blue)
        return hexString as String
    }

}
