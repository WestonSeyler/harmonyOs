import ans from './test'
import { ReplyItem, replyList } from '../../models'
import { promptAction } from '@kit.ArkUI'

@Component
struct NavComp{
  @Prop replyList: ReplyItem[]
  build() {
    Row(){
      Row(){
        Image($r('app.media.ic_public_arrow_left'))
          .width(16)
          .aspectRatio(1)
      }
      .width(24)
      .aspectRatio(1)
      .backgroundColor('#f5f5f5')
      .borderRadius(12)
      .justifyContent(FlexAlign.Center)
      .margin({ left: 16 })
      Row(){
        Text('评论回复')
          .layoutWeight(1)
          .textAlign(TextAlign.Center)
          .padding({ right: 40 })
          .onClick(()=>{
            console.log(JSON.stringify(this.replyList))
          })
      }
      .height(40)
      .border({ width: { bottom: 0.5 }, color: '#e4e4e4' })
    }
    // .padding({left:15,right:15})
    .height(50)
    .backgroundColor('#ffffff')
    .border({width:{top:1},color:'#e4e4e4'})
  }

}



@Entry
@Component
export default struct Index{
  @State
  content:string=''

  @State
  replyList: ReplyItem[] = replyList

  show(item:ReplyItem):void{

  }

  build() {
    Stack({alignContent:Alignment.Bottom}){
      Column(){
        Scroll(){
          Column(){
            //导航  ans({ replyList: this.replyList })
            NavComp({ replyList: this.replyList })
            //评论
            ans()
            Column(){
              Text('回复 100')
                .width('100%')
                .fontWeight(600)
              ForEach(this.replyList,(item:ReplyItem)=>{
                Row(){
                  Image(item.avatar)
                    .width(32)
                    .aspectRatio(1)
                    .borderRadius(16)
                  Column({ space: 5 }) {
                    Text(item.author)
                      .width('100%')
                      .fontWeight(FontWeight.Bold)
                      .fontSize(15)
                    Text(item.content)
                      .width('100%')
                    Row() {
                      Text(`${item.time} · IP属地${item.area}`)
                        .fontSize(12)
                        .fontColor('#c3c4c5')
                      Row({ space: 4 }) {
                        Image($r('app.media.ic_public_favor'))
                          .width(14)
                          .aspectRatio(1)
                          .fillColor(item.likeFlag ? Color.Red : Color.Blue)
                        Text(`${item.likeNum}`)
                          .fontSize(12)
                          .fontColor('#c3c4c5')
                      }
                    }
                    .width('100%')
                    .justifyContent(FlexAlign.SpaceBetween)
                    .onClick(()=>this.show(item))
                  }
                  .layoutWeight(1)
                  .padding({ left: 10 })
                }
                .padding(15)
                .alignItems(VerticalAlign.Top)
              })
            }
            .width('100%')
            .height('100%')
            //分割线
            Divider()
              .strokeWidth(8)
              .color('#f5f5f5')
          }
          .padding({ bottom: 50 })
        }
      }
      .width('100%')
      .height('100%')
      Row({space:15}){
        TextInput({placeholder:'回复',text:this.content})
          .layoutWeight(1)
          .placeholderColor('#c3c4c5')
          .layoutWeight(1)
          .onChange((value) => {
            this.content = value
          })
        Text('发布')
          .fontColor('#069')
          .onClick(()=>{
            const reply: ReplyItem = {
              id: Math.random(),
              content: this.content,
              author: 'Zhousg',
              avatar: $r('app.media.ic_user_portrait').toString(),
              time: '12-01',
              likeNum: 0,
              area: '北京'
            }
            this.replyList.unshift(reply)
            this.content = ''
            promptAction.showToast({ message: '回复成功' })
          })
      }
      .padding({ left: 15, right: 15 })
      .width('100%')
      .height(50)
      .backgroundColor('#fff')
      .border({ width: { top: 0.5 }, color: '#e4e4e4' })
    }
  }
}


