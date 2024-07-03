// import { Cart } from '../components/Cart'
// import { Footer } from '../components/Footer'
// import { MenuWrapper } from '../components/MenuWrapper'
// import { Nav } from '../components/Nav'

@Entry
@Component
struct Index {

  @State
  showCart: boolean = false

  build() {
    Stack({ alignContent: Alignment.Bottom }) {
      Column() {
        // Nav()
        // MenuWrapper()
      }
      .width('100%')
      .height('100%')
      if (this.showCart) {
        // Cart()
      }
      // Footer({ showCart: $showCart })
    }
  }
}