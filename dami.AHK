#SingleInstance force
#IfWinActive, ahk_class D3 Main Window Class ;仅在D3下有效,开局按F3启动宏,中途或结尾按F2暂停或继续宏

;开局按F3启动所有连点计时器,请根据技能释放间隔设置对应周期,强制移动和左键连点周期设为50或更短比较好,但千万不要是0或负数
;杨裤流玩家可以把左键连点周期50换成off,关闭左键连点,手动左键点击怪物触发对戒,懒人玩家建议开启

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

Label1:
{
ControlSend ,,{1},pwd.txt ;动作条技能1键对应按键,代码例子中是1
Return
}

Label2:
{
ControlSend ,,{2},pwd.txt ;动作条技能2键对应按键,代码例子中是2
Return
}

Label3:
{
ControlSend ,,{3},pwd.txt ;动作条技能3键对应按键,代码例子中是3
Return
}

Label4:
{
ControlSend ,,{4},pwd.txt ;动作条技能4键对应按键,代码例子中是4
Return
}

CompelMove:
{
ControlSend ,,{x},pwd.txt ;强制移动键对应按键,代码例子中是X
Return
}

MouseLButton:
{
Click ;鼠标左键
Return
}

~F2::Pause ;宏暂停或继续