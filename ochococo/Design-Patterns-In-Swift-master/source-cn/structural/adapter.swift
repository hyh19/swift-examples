/*:
ð ééå¨ï¼Adapterï¼
--------------

ééå¨æ¨¡å¼ææ¶åä¹ç§°åè£æ ·å¼æèåè£(wrapper)ãå°ä¸ä¸ªç±»çæ¥å£è½¬æ¥æç¨æ·ææå¾çãä¸ä¸ªééä½¿å¾å æ¥å£ä¸å¼å®¹èä¸è½å¨ä¸èµ·å·¥ä½çç±»å·¥ä½å¨ä¸èµ·ï¼åæ³æ¯å°ç±»èªå·±çæ¥å£åè£¹å¨ä¸ä¸ªå·²å­å¨çç±»ä¸­ã

### ç¤ºä¾ï¼
*/
protocol NewDeathStarSuperLaserAiming {
    var angleV: Double { get }
    var angleH: Double { get }
}
/*:
**è¢«ééè**
*/
struct OldDeathStarSuperlaserTarget {
    let angleHorizontal: Float
    let angleVertical: Float

    init(angleHorizontal: Float, angleVertical: Float) {
        self.angleHorizontal = angleHorizontal
        self.angleVertical = angleVertical
    }
}
/*:
**ééå¨**
*/
struct NewDeathStarSuperlaserTarget: NewDeathStarSuperLaserAiming {

    private let target: OldDeathStarSuperlaserTarget

    var angleV: Double {
        return Double(target.angleVertical)
    }

    var angleH: Double {
        return Double(target.angleHorizontal)
    }

    init(_ target: OldDeathStarSuperlaserTarget) {
        self.target = target
    }
}
/*:
### ç¨æ³
*/
let target = OldDeathStarSuperlaserTarget(angleHorizontal: 14.0, angleVertical: 12.0)
let newFormat = NewDeathStarSuperlaserTarget(target)

newFormat.angleH
newFormat.angleV
