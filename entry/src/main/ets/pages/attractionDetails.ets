
@Entry
@Component
struct attractionDetails {

  @State statusList: any = [{
    img:$r('app.media.star'),
    number:'4.8',
    evaluate:'6k评论'
  },{
    img:$r('app.media.eye'),
    number:'626Km',
    evaluate:'距离'
  },{
    img:$r('app.media.date'),
    number:'6-8月',
    evaluate:'推荐月份'
  }];
  @State travelImgs : any = [$r('app.media.travel3'),$r('app.media.travel4'),$r('app.media.travel5'),$r('app.media.travel6')]
  build() {
    Column(){
      Image($r('app.media.travel2'))
        .width('100%')
        .height(250)
      Column(){
        Flex({ direction: FlexDirection.Row }){
          Column(){
            Text('波拉波拉岛').width('100%').padding(5)
            Text('太平洋东南部社会群岛岛屿').width('100%').padding(5).fontColor('#aaa').fontSize(14)
          }.width('80%')
          Image($r('app.media.app_icon'))
            .width(30)
            .height(30)
            .margin({top:10})
        }.margin({top:20}).width('80%')

        Flex({
          direction: FlexDirection.Row,
        }){
          ForEach(this.statusList, (item, index: number) => {
            Column(){
              Image(item.img)
                .width(90)
                .height(90)
                .borderRadius(50)
              Text(item.number)
              Text(item.evaluate).fontSize(14).fontColor('#aaa').padding({top:5})
            }.width('80%')
          }, item => JSON.stringify(item))
        }.margin({top:15})

        Text(){
          Span('由中部主要岛和周围游戏系列小岛组成。第二次世界大战期间曾是美股哦海军空军基地。是社会群岛最美的岛屿之一。岛西岸的其他岛屿...')
          Span('阅读更多').fontColor('blue')
        }.width('88%').margin({top:25}).fontColor('#aaa').lineHeight(25)

        Flex({
          direction: FlexDirection.Row,
        }){
          ForEach(this.travelImgs, (item, index: number) => {
            Column(){
              Image(item)
                .width(65)
                .height(65)
            }.width('80%')
          }, item => JSON.stringify(item))
        }.margin({top:25})
        Flex({ direction: FlexDirection.Row,}){
          Column(){
            Text('价格').width('100%')
            Text('￥9589').fontWeight(600).fontSize(24).width('100%')
          }.width('35%')
          Column(){
            Button('立即预定', { type: ButtonType.Normal, stateEffect: true })
              .borderRadius(8)
              .backgroundColor(0x317aff)
              .width('90%')
              .height(40)
          }.width('82%').margin({top:5})
        }.width('90%').margin({top:60})
      }.width('92%').height('90%').border({width:1,color:'#eee'}).margin({top:'-150px'}).backgroundColor('white').borderRadius({topLeft:10,topRight:10})
    }
  }
}


