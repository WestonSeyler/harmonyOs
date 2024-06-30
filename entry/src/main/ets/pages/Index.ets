import router from '@ohos.router';

// import Style from './style/style'
// import Test from './zhihu/test'
// import Style from './style/sameStyle'
// import form from './components/Form'
import Extend from './components/extend'
import styles from './components/stateStyles'
// import userData from './components/object'
import StackExample from './stack/index'
import State from './state/index'
import home from './home/index'
// import Parent from './state/state'
// import Observer from './state/observe'
import storage from "./state/stroage"
import environment from "./Environment/index"

// import Reply from './zhihu/index'

@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {
        environment()
      }
    }
  }
}