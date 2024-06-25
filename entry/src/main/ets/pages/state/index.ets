class params {
  title: string = ''
}


@Component
struct PanelComp {
  title: string | Resource | undefined = ''
  more: string | Resource | undefined = ''
  @BuilderParam
  panelContent: () => void = this.DefaultPanelContent
  @BuilderParam
  panelFooter: () => void=this.DefaultPanelContent

  // 备用 Builder
  @Builder
  DefaultPanelContent() {
    Text ('默认内容')
  }

  build() {
    Column() {
      Row() {
        Text (this.title)
          .layoutWeight (1)
          .fontWeight (600)
        Row() {
          Text (this.more)
            .fontSize (14)
            .fontColor ('#666666')
          Image ($r ('app.media.ic_public_arrow_right'))
            .width (16)
            .fillColor ('#666666')
        }
      }
      .padding (10)

      Row() {
        this.panelContent ()
      }

      Row() {
        this.panelFooter ()
      }
      .height (100)
    }
    .borderRadius (12)
    .backgroundColor ('#fff')
  }
}

@Entry
@Component
export default struct Index {
  @State
  rate: number = 0

  @Builder
  MoreBuilder(params: params) {
    Row() {
      Text (params.title)
        .fontSize (14)
        .fontColor ('#666666')
      Image ($r ('app.media.ic_public_arrow_right'))
        .width (16)
        .fillColor ('#666666')
    }
  }

  @Builder
  ContentBuilderA() {
    Text ('评价内容')
  }

  @Builder
  FooterBuilderA() {
    Text ('评价底部111')
  }



  build() {

    Column() {
      Button ('获取数据')
        .margin ({ bottom: 15 })
        .onClick (() => {
          this.rate++
        })
      GridRow({ columns: 2, gutter: 15 }) {
        GridCol({ span: 2 }) {
          PanelComp ({
            title: '评价（2000+）',
            more: '好评率98%',
            panelFooter: this.FooterBuilderA,
            panelContent: this.ContentBuilderA
          })
        }

        GridCol() {
          Column() {
            Row() {
              Text ('推荐')
                .layoutWeight (1)
                .fontWeight (600)
              this.MoreBuilder ({ title: '查看全部' })
              // TODO
            }
            .padding (10)

            Row ()
              .height (100)
          }
          .borderRadius (12)
          .backgroundColor ('#fff')
        }

        GridCol() {
          Column() {
            Row() {
              Text ('体验')
                .layoutWeight (1)
                .fontWeight (600)
              this.MoreBuilder ({ title: '4 条测评' })


            }
            .padding (10)

            Row ()
              .height (100)
          }
          .borderRadius (12)
          .backgroundColor ('#fff')
        }
      }
    }
    .height ('100%')
    .padding (15)
    .backgroundColor ('#f5f5f5')
  }
}
