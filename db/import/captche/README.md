1. 此文件夹用于放置图片验证码, 可通过GM指令 @captche 与 脚本指令 captche 向玩家发出图片, 玩家输入图片上的内容完成验证, 用于验证玩家是否为机器人和外挂程序.
2. 图片大小为 220x90 24位BMP图像, 实际大小为 59454 字节, 也可以是 8位索引色BMP索引色图像
3. 图片验证文件没有对应的数据文件, 固以图片文件名为验证答案,  弹出图片验证后玩家需要输入图片对应的文件名完成验证(图片内容需要与文件名对应起来).
4. 可通过 @reloadcaptchedb 刷新此库, 刷新不影响未完成验证的玩家继续验证.
5. 玩家开始验证时会触发脚本事件 OnPCCaptcheFilter 此事件可打断, 打断后发送图片验证失败
6. 玩家开始结束后会触发脚本事件 OnPCCaptcheEvent  事件返回验证状态用于判断玩家是否通过
7. 在 conf/battle/BetterRA.conf 中 captche_retry 与 captche_timeout 用于设置超时时间和重试次数
8. 在使用验证系统时客户端需要使用在 diff 中修复验证码文件大小 Fix captche decompression buffer size