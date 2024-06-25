
import promptAction from '@ohos.promptAction'
// 组件状态共享

class Person{
  name:string=''
  age:number=18
}


@Entry
@Component
export default struct parent{

  // @Provide
  // money:number=20;
  //
  // @State
  // person:Person={name:'www',age:20}
  // build() {
  //   Column({space:20}){
  //       Text('父组件'+this.person.name+this.person.age+this.money)
  //         .onClick(()=>{
  //           this.money++
  //         })
  //     Child({money:$money,person:$person})
  //   }
  //   .width('100%')
  //   .height('100%')
  //   .alignItems(HorizontalAlign.Center)
  //   .justifyContent(FlexAlign.Center)
  //
  // }

  @State
  activeIndex:number=20;
  @State TooTmp: ToolbarItem = {'value': "func",  'action': ()=> {}}

  onChange(index:number){
    this.activeIndex=index;
    // promptAction.showToast({message:'点击'})
  }

  build() {
   Navigation(){
      Child({activeIndex:this.activeIndex})
   }
   .toolbarConfiguration([
     {'value': "首页",action:()=>this.onChange(0)},
     {'value': "我的",action:()=>this.onChange(1)}

   ])
  }

}

@Component
struct Child{
  @Prop
  @Watch('onActiveIndex')
  activeIndex:number

  onActiveIndex() {
    promptAction.showToast({ message: `${this.activeIndex}` })
  }

  build() {
    Column(){
      Text('child'+this.activeIndex)
    }
  }
}

// @Component
// struct Child{
//   @Link
//   money:number;
//
//   @Link
//   person:Person;
//   build() {
//    Column(){
//      Text('子组件'+this.money+this.person.age)
//        .onClick(()=>{
//          this.money++
//          this.person.age++
//        })
//      son()
//    }
//
//   }
// }
//
// @Component
// struct son{
//   @Consume
//   money: number
//
//   build() {
//     Text('son'+this.money)
//       .onClick(()=>{
//         this.money++
//       })
//   }
// }