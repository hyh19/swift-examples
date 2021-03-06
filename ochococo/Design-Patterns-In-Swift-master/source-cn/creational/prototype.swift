/*:
ð ååï¼Prototypeï¼
--------------

éè¿âå¤å¶âä¸ä¸ªå·²ç»å­å¨çå®ä¾æ¥è¿åæ°çå®ä¾,èä¸æ¯æ°å»ºå®ä¾ãè¢«å¤å¶çå®ä¾å°±æ¯æä»¬æç§°çâååâï¼è¿ä¸ªååæ¯å¯å®å¶çã

### ç¤ºä¾ï¼
*/
struct MoonWorker {

    let name: String
    var health: Int = 100

    init(name: String) {
        self.name = name
    }

    func clone() -> MoonWorker {
        return MoonWorker(name: name)
    }
}
/*:
### ç¨æ³
*/
let prototype = MoonWorker(name: "Sam Bell")

var bell1 = prototype.clone()
bell1.health = 12

var bell2 = prototype.clone()
bell2.health = 23

var bell3 = prototype.clone()
bell3.health = 0
