/*:
 ð åæï¼Monostateï¼
 ------------

  åææ¨¡å¼æ¯å®ç°åä¸å±äº«çå¦ä¸ç§æ¹æ³ãä¸åäºåä¾æ¨¡å¼ï¼å®éè¿å®å¨ä¸åçæºå¶ï¼å¨ä¸éå¶æé æ¹æ³çæåµä¸å®ç°åä¸å±äº«ç¹æ§ã
  å æ­¤ï¼å¨è¿ç§æåµä¸ï¼åæä¼å°ç¶æä¿å­ä¸ºéæï¼èä¸æ¯å°æ´ä¸ªå®ä¾ä¿å­ä¸ºåä¾ã
 [åä¾ååæ - Robert C. Martin](http://staff.cs.utu.fi/~jounsmed/doos_06/material/SingletonAndMonostate.pdf)

### ç¤ºä¾:
*/
class Settings {

    enum Theme {
        case `default`
        case old
        case new
    }

    private static var theme: Theme?

    var currentTheme: Theme {
        get { Settings.theme ?? .default }
        set(newTheme) { Settings.theme = newTheme }
    }
}
/*:
### ç¨æ³:
*/
import SwiftUI

// æ¹åä¸»é¢
let settings = Settings() // å¼å§ä½¿ç¨ä¸»é¢ .old
settings.currentTheme = .new // æ¹åä¸»é¢ä¸º .new

// çé¢ä¸
let screenColor: Color = Settings().currentTheme == .old ? .gray : .white

// çé¢äº
let screenTitle: String = Settings().currentTheme == .old ? "Itunes Connect" : "App Store Connect"
