// import Style from './style/style'
// import Test from './zhihu/test'
// import Style from './style/sameStyle'
// import form from './components/Form'
import Extend from './components/extend'
import styles from './components/stateStyles'
import userData from './components/object'
@Entry
@Component
struct Index {
  build() {
    Column(){
      userData()
    }

  }
}