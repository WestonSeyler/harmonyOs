// 对象模型
class User {
  nickname: string=''
  age: number=0
}

class UserData {
  code: number=0
  message: string=''
  // 嵌套对象
  data: User={
    nickname:'',
    age:20
  }
}


@Entry
@Component
struct Index {
  @State
  res: UserData = {
    code: 10000,
    message: '获取用户信息成功',
    // 嵌套对象
    data: { nickname: 'jack', age: 18 }
  }

  build() {
    Column({ space: 20 }) {
      Text(this.res.data.nickname)
      Text(this.res.data.age.toString())
      Button('age++')
        .onClick(() => {
          // ❌ this.res.data.age ++
          const user = this.res.data
          // 替换属性，触发UI更新
          this.res.data = { nickname:user.nickname, age: user.age + 1 }
        })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}

const a = 'hello'
console.log(a);