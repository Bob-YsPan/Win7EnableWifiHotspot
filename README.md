# Windows 7 啟用無線基地台小程式
## 簡單的批次檔啟用Windows 7無線基地台功能
*不是所有的無線網卡都適用於基地台分享！部分無線網卡會發生無法開啟或用戶端斷線...等情況！！*<br />
*由於是Batch，原始碼就可以執行囉！故就不發行於Release了*<br />
<br />
這隻程式採用Batch(批次檔)撰寫，有一部分的功能仍然需要使用者手動操作，但希望可以簡化一些命令列輸入的部分。<br />
本程式目前有5個功能：<br />
***
### 設定無線基地台並啟用
透過預置設定檔或者手動輸入的方式來啟用基地台
***
### 僅啟用無線基地台虛擬網卡
啟用Windows 7共享網路之 "Microsoft Virtual WiFi Miniport Adapter"
網路卡，但是不變動任何數值，亦不啟用網路共用(當初設計是針對部分基地台軟體)
***
### 停用無線基地台
停用無線基地台，並關閉共享網卡(網卡會從控制台網路介面卡中消失，但是設定值由於是由登錄檔所控制，故會保留)
***
### 顯示無線基地台狀態
顯示基地台連線狀態，原理是透過"netsh wlan show hostednetwork"指令達成
***
### 修改基地台可連線人數(請小心操作！)(V2版新增)
透過引導使用者手動修改登錄檔來修改網路基地台連線人數限制<br />
建議按照指示操作，除非你真的知道你在做甚麼！！！<br />
***
感謝這些網站為我撰寫指令提供了不少方便的建議<br />
https://poychang.github.io/note-batch/#targetText=將命令提示字元,次(Batch%20file)檔。<br />
https://www.robvanderwoude.com/choice.php<br />
https://www.microduo.tw/thread-32178-1-1.html<br />
https://superuser.com/questions/301765/restart-a-windows-service-from-the-command-line<br />
小程式撰寫時亦參照了命令提示字元的相關命令說明
