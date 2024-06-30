
class User{
  name:string=''
  age:number=10
}

AppStorage.setOrCreate<User>('user',{ name: 'jack', age: 18 });


@Entry
@Component
struct CompA {
  @StorageProp('user')
  // 可忽略，编辑器类型错误
  user: User = {
    name:'111',
    age:10
  }
  build() {
    Column({ space: 15 }) {
      Text('Index：')
      Text(this.user.name+this.user.age)
        .onClick(() => {
          // this.user.age++
          AppStorage.set('user', {
            name: 'tom',
            age: 100
          })
        })
      Divider()
      ChildA()
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}

@Component
struct ChildA {
  @StorageLink('user')
  user: User = {
    name:'111',
    age:10
  }

  build() {
    Column({ space: 15 }){
      Text('ChildA：')
      Text(this.user.name + this.user.age)
        .onClick(()=>{
          this.user.age ++
        })
    }
  }
}