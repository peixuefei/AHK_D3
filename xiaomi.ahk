#SingleInstance force
#IfWinActive, ahk_class D3 Main Window Class ;仅在D3下有效,开局按F3启动宏,中途或结尾按F2暂停或继续宏

;开局按F3启动所有连点计时器,请根据技能释放间隔设置对应周期
;强制移动和左键连点周期设为50或更短比较好,我试过200也不错，感觉按太快也不太好,但千万不要是0或负数
;杨裤流玩家可以把左键连点周期50换成off,关闭左键连点,手动左键点击怪物触发对戒,懒人玩家建议开启
;速刷小米捡东西离不开左键连点,建议开启

SetKeyDelay,50
SetMouseDelay,50

~F3::
SetTimer, Label1, 630 ;动作条技能1键630毫秒连点
SetTimer, Label2, 630 ;动作条技能2键630毫秒连点
SetTimer, Label3, 630 ;动作条技能3键630毫秒连点
SetTimer, Label4, 630 ;动作条技能4键630毫秒连点
SetTimer, CompelMove, 50 ;强制移动键50毫秒连点
SetTimer, MouseLButton, 50 ;鼠标左键50毫秒连点
Return

~RButton:: ;右键战马冲锋暂停技能1234和左键连点，等3秒跑马结束之后自动回复技能1234和左键连点
SetTimer, Label1, off ;动作条技能1键连点关闭,因为此时上马了
SetTimer, Label2, off ;动作条技能2键连点关闭,因为此时上马了
SetTimer, Label3, off ;动作条技能3键连点关闭,因为此时上马了
SetTimer, Label4, off ;动作条技能4键连点关闭,因为此时上马了
SetTimer, CompelMove, 50 ;强制移动键连点开启,因为跑马就是鼠标指针+强制移动即可移动
SetTimer, mouseLButton,off ;左键连点关闭,避免指针移到怪物身上触发左键下马
sleep 3000 ;战马冲锋马不停蹄3秒符文(即3000毫秒),如果是其他符文或天马连枷特效则写对应时间即可
SetTimer, Label1, 630 ;动作条技能1键连点开启,因为此时下马了
SetTimer, Label2, 630 ;动作条技能2键连点开启,因为此时下马了
SetTimer, Label3, 630 ;动作条技能3键连点开启,因为此时下马了
SetTimer, Label4, 630 ;动作条技能4键连点开启,因为此时下马了
SetTimer, CompelMove, 50 ;强制移动键连点一直开启
SetTimer, mouseLButton,50 ;左键连点开启,下马杀怪捡物品离不开左键连点
Return

Label1:
{
ControlSend ,,{A},暗黑破坏神III ;动作条技能1键计时器向暗黑3界面发送按键1指令
Return
}

Label2:
{
ControlSend ,,{S},暗黑破坏神III ;动作条技能2键计时器向暗黑3界面发送按键2指令
Return
}

Label3:
{
ControlSend ,,{D},暗黑破坏神III ;动作条技能3键计时器向暗黑3界面发送按键3指令
Return
}

Label4:
{
ControlSend ,,{W},暗黑破坏神III ;动作条技能4键计时器向暗黑3界面发送按键4指令
Return
}

CompelMove:
{
ControlSend ,,{x},暗黑破坏神III ;强制移动键计时器向暗黑3界面发送强制移动按键x指令
Return
}

MouseLButton:
{
Click ;发送左键点击指令
Return
}

~F2::Pause ;暂停或继续