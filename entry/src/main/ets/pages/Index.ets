// import Style from './style/style'
// import Test from './zhihu/test'
// import Style from './style/sameStyle'
// import form from './components/Form'
import Extend from './components/extend'
import styles from './components/stateStyles'
// import userData from './components/object'
import StackExample from './stack/index'
import State from './state/index'
// import Reply from './zhihu/index'

@Entry
@Component
struct Index {
  build() {
    Column(){
      State()
    }
    .padding({ top: '0vp', right: '0.00vp', bottom: '0.00vp', left: '0.00vp' })

  }
}