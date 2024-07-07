// import { Cart } from '../components/Cart'
// import { Footer } from '../components/Footer'
// import { MenuWrapper } from '../components/MenuWrapper'
import Nav from './components/Nav'
import MenuWrapper from './components/MenuWrapper'
import Card from './components/card'
import Footer from './components/Footer'

@Entry
@Component
export default struct Index {

  @State
  showCart: boolean = true

  build() {
    Stack({ alignContent: Alignment.Bottom }) {
      Column() {
        Nav()
        MenuWrapper()
      }
      .width('100%')
      .height('100%')
      if (this.showCart) {
        // Card()
      }
      Footer()
    }
  }
}