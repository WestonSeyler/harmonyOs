import promptAction from '@ohos.promptAction';
@Entry
@Component
export default struct Index{
  @State
  mobile:string=''

  @State
  code:string=''

  @Styles
  inputStyle(){
    .border({width:1,color:Color.Gray})
    .layoutWeight(1)
    .margin({left:10,bottom:10,top:10})
    .backgroundColor(Color.White)
  }


  build(){
    Column(){
      Row(){
        Text('手机号')
        TextInput({text:this.mobile})
          .inputStyle()
          .onChange((value)=>{
            this.mobile=value
          })
      }
      Row(){
        Text('验证')
        TextInput({text:this.code})
          .inputStyle()
          .onChange((value)=>{
            this.code=value
          })
      }
      Row({space:15}){
          Button('重置')
            .backgroundColor('#ccc')
            .onClick(()=>{
              this.mobile=''
              this.code=''
            })
          Button('登录')
            .onClick(()=>{
              if(this.mobile&&this.code){
                promptAction.showToast({message:'登录成功'})
              }else{
                promptAction.showToast({message:'请输入正确的手机号'})
              }
            })
      }

    }
    .padding(20)
  }
}