// @Entry
// @Component
// export default struct render{
//   @State
//   loading:boolean=false
//
//   build() {
//     Column({space:20}){
//       if(this.loading){
//         LoadingProgress()
//           .width(100)
//           .height(100)
//       }else{
//         Text('后台数据')
//       }
//       Button('更新数据')
//         .onClick(()=>{
//           this.loading=true;
//           setTimeout(()=>{
//             this.loading=false
//           },2000)
//         })
//     }
//     .width('100%')
//     .height("100%")
//     .justifyContent(FlexAlign.Center)
//
//   }
// }

// @Component
// struct  CounterComp{
//   @State
//   count:number=0;
//   build() {
//     Button(this.count.toString())
//       .onClick(()=>{
//         this.count++
//       })
//   }
// }

// @Entry
// @Component
// export default struct  render{
//   @State
//   show:boolean=false
//
//   build(){
//
//     Column(){
//       if(this.show){
//         CounterComp()
//       }
//       Button('toggle')
//         .onClick(()=>{
//           this.show=!this.show
//         })
//     }
//     .width('100%')
//     .height('100%')
//     .justifyContent(FlexAlign.Center)
//   }
// }



class User {
  id: string=''
  name: string=''
  age: number=0
}


@Entry
@Component
export default struct Index {
  @State
  userList: User[] = []

  build() {
    Scroll() {
      Column({ space: 20 }) {
        // 循环渲染
        ForEach(
          // 1. 数据源
          this.userList,
          // 2. 组件生成函数
          (item: User) => {
            // 内容
            Text(`${item.name} 今年 ${item.age} 岁`)
          },
          // 3. 键值生成函数
          (item:User) => item.id
        )
        Button('加载更多')
          .onClick(() => {
            console.log(JSON.stringify(this.userList))
            const arr: User[] = []
            for (let index = 0; index < 10; index++) {
              arr.push({ id: Math.random().toString(), name: `jack${index}`, age: Math.ceil(Math.random() * 100) })
            }
            this.userList.push(...arr)
          })
      }

    }
    .width('100%')
  }
}

