import Footer from './components/Footer'

@Entry
@Component
struct Index {
  build() {
    Column(){
      // 使用 `Footer` 组件
      Footer()
    }
  }
}