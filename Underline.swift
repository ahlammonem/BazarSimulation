import UIKit

extension UILabel {

    func underline(){
        
        if let myText = self.text {
            
            let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue]
            
            let underlineAttributedString = NSAttributedString(string: myText, attributes: underlineAttribute)
            self.attributedText = underlineAttributedString
        }
    }
}
