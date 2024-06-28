

@Entry
@Component
export struct My {
  @State menuIcon: any = [$r('app.media.map'),$r('app.media.flay'),$r('app.media.news')]

  build() {
    Column() {
      Flex({ direction: FlexDirection.Row }) {
        Row() {
          Image($r('app.media.person'))
            .width(60)
            .height(60)
            .borderRadius(50)
        }.width('30%').padding({top:20})

        Column() {
            Text('肖托姆').fontSize(22).fontWeight(600).width('100%').lineHeight(30).margin({top:20})
            Text('Lv.26 旅行达人').width('100%').fontColor('#888').fontSize(16).lineHeight(25)
        }.width('60%').height(80)

        Row() {
          Image('https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641')
            .width(30)
            .height(30)
            .borderRadius(50)
        }.width('20%').padding({top:20}).margin({top:20})
      }
    //   打卡城市
      Text('回忆录').fontSize(24).fontWeight(600).width('100%').lineHeight(30).margin({top:20})
      Image($r('app.media.site'))
        .width('100%')
        .height(200)
        .borderRadius(15)
        .margin({top:20})
    //   else
      ForEach(this.menuIcon,(item) =>{
        Row({ space: 5 }) {
          Row() {
            Image(item)
              .width(25)
              .height(25)
              .objectFit(ImageFit.Cover)
              .borderRadius(50)
            Text('打卡地图')
              .fontWeight(FontWeight.Regular)
              .fontSize(16)
              .fontColor(0x333333)
              .margin({ left: 12 })
          }

          Row() {
            Image($r('app.media.right'))
              .width(22)
              .height(22)
              .margin({ right: 12 })
          }
          .justifyContent(FlexAlign.Center)
          .height('100%')
          .onClick(() => {
          })
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .width('100%')
        .height(60)
        .backgroundColor(0xFFFFFF)
      })
    }.padding(20).width('100%').height('100%')
  }
}