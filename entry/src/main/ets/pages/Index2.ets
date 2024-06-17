import Footer from './components/Footer'

@Entry
@Component
struct Index {
  build() {
    Column(){
      Row(){
        Text('手机号')
        TextInput()
      }
      Row(){
        Text('验证码')
        TextInput()
      }
      Row(){
        Button('重置').backgroundColor('#ccc').margin('10px')
        Button('登录')
      }
    }

  }
}