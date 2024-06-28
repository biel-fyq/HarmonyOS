import router from '@ohos.router'
@Component
export struct recommendedDetails {
  @State simpleList: Array<string> = ['蜈支洲岛', '海湾岛', '大东岛','呀诺达'];
  build() {
    Column() {
      Text('为您推荐').width('100%').fontWeight(600).fontSize(20).margin({top:'20'})
      Image($r('app.media.travel1'))
        .width('100%')
        .height(200)
        .borderRadius({topLeft:20,topRight:20})
        .onClick(() => {
          router.pushUrl({ url: 'pages/attractionDetails' }).then(() => {
            console.info('Succeeded in jumping to the attractionDetails page.')
            console.log("123456789")

          }).catch((err) => {
            console.log("123456789")
          })
        })
      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Column(){
          Text('米克诺斯岛').width('100%').lineHeight(30).padding(5)
          Text('希腊').width('100%').fontSize(14).fontColor('#aaa').padding(5)
        }.width('80%')
        Column(){
          Image($r('app.media.app_icon')).width(30).height(30).borderRadius(50).margin({top:'20'})
        }.width('20%')
      }
      .width('100%')
      .border({width:{bottom:1,left:1,right:1},color:'#eee'})

      Text('热门推荐').width('100%').fontWeight(600).fontSize(20).margin({top:20})

      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Column(){
          Image('https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641').width('100%').height(130).borderRadius(10)
        }.width('30%')
        Column(){
          Text('米克诺斯岛旅游区').width('100%').lineHeight(30).padding(5)
          Text('这次旅行不留遗憾的是，三亚精华经典以及游玩项目').width('100%').fontSize(14).fontColor('#aaa').padding(5).lineHeight(20)
          Flex(){
            Row(){
              Image('https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641').width(20).height(20).borderRadius(10)
              Text('4.8')
              }.backgroundColor('#eee').width(60).padding(5)
          }.width('100%')
        }.padding({left:10})
      }.margin({top:20})

    }
  }
}
