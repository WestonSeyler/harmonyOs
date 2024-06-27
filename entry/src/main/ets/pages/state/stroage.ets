interface UserType {
  name?: string
  age?: number
}

// 创建新实例并使用给定对象初始化
let para: Record<string, UserType> = {
  'user': {
    name: 'jack',
    age: 18
  }
};

const storage: LocalStorage = new LocalStorage(para);


@Entry(storage)
@Component
export default struct Index {
  @LocalStorageProp('user')
  user: UserType = {}

  build() {
    Column({ space: 15 }) {
      Text('Index：')
      Text(this.user.name + `${this.user.age}`)
        .onClick(() => {
          this.user.age && this.user.age++
        })
      Divider()
      ChildA()
      Divider()
      ChildB()
      Divider()
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}


@Component
struct ChildA {
  @LocalStorageLink('user')
  user: UserType = {}

  build() {
    Column({ space: 15 }) {
      Text('ChildB：')
      Text(this.user.name + `${this.user.age}`)
        .onClick(() => {
          this.user.age && this.user.age++
        })
    }
  }
}

@Component
struct ChildB {
  @LocalStorageLink('user')
  user: UserType = {}

  build() {
    Column({ space: 15 }) {
      Text('ChildB：')
      Text(this.user.name + `${this.user.age}`)
        .onClick(() => {
          this.user.age && this.user.age++
        })
    }
  }
}