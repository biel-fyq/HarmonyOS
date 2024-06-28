
import { topView } from  '../view/topView'
import  { My } from '../pages/my'

@Entry
@Component
struct Index {
  private controller: TabsController = new TabsController()
  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, controller: this.controller }) {
        TabContent() {
          topView()
        }
        .tabBar('首页')
        TabContent() {
          My()
        }
        .tabBar('我的')
      }
      .barWidth('100%')
      .barHeight(60)
      .width('100%')
      .height('100%')
      .backgroundColor(0xF5F5F5)
    }
    .width('100%')
    .height('100%')
  }
}