import promptAction from '@ohos.promptAction';
@Extend(Text)
function  capsule(){
    .height(40)
    .borderRadius(10)
    .backgroundColor(Color.Red)
    .padding({left:15,right:15})
    .margin({bottom:15})
}

@Entry
@Component
export default struct styles{

  @State
  disabled:boolean=false

  @State
  focused: boolean = false

  build() {
    Column(){
      Text('toggle disabled'+this.disabled)
        .capsule()
        .onClick(()=>{
          this.disabled=!this.disabled
        })
      Text('toggle focused'+this.focused)
        .capsule()
        .onClick(()=>{
          this.focused=!this.focused
        })
      Text('clickMe')
        .capsule()
        .enabled(this.disabled)
        .focusable(this.focused)
        .onClick(()=>{
          promptAction.showToast({message:'click'})
        })
        .stateStyles({
          normal:{
            .backgroundColor(Color.Blue)
          },
          focused:{
            .backgroundColor(Color.Red)
          },
          disabled:{
            .backgroundColor(Color.Gray)
          },
          pressed:{
            .backgroundColor(Color.Orange)
          }
        })
    }
  }
}
