import promptAction from '@ohos.promptAction';
import prompt from '@ohos.promptAction';

@Entry
@Component
struct Index {
  @State
  mobile:string='';

  @State
  code:string=''
  build() {
    Column(){
      Row(){
        Text('手机号')
        TextInput({text:this.mobile})
          .onChange((value)=>this.mobile13=value)
      }
      Row(){
        Text('验证码')
        TextInput({ text: this.code })
          .onChange((value)=>this.code = value)
      }
     Row(){
       Button('重置')
         .backgroundColor('#ccc')
         .onClick(()=>{
            this.mobile=''
            this.code=''
         })
       Button('登录')
         .onClick(()=>{
           if(this.mobile && this.code){
             promptAction.showToast({
               message:`${this.mobile}登录成功`
             })
           }else{
             promptAction.showToast({
               message:'请输入手机号或者验证码'
             })
           }
         })

     }
    }

  }
}