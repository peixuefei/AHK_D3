#SingleInstance force
#IfWinActive, ahk_class D3 Main Window Class ;����D3����Ч,���ְ�F3������,��;���β��F2��ͣ�������

;���ְ�F3�������������ʱ��,����ݼ����ͷż�����ö�Ӧ����,ǿ���ƶ����������������Ϊ50����̱ȽϺ�,��ǧ��Ҫ��0����
;�������ҿ��԰������������50����off,�ر��������,�ֶ����������ﴥ���Խ�,������ҽ��鿪��

SetKeyDelay,50
SetMouseDelay,50

~F3::
SetTimer, Label1, 630 ;����������1��630��������
SetTimer, Label2, 630 ;����������2��630��������
SetTimer, Label3, 630 ;����������3��630��������
SetTimer, Label4, 630 ;����������4��630��������
SetTimer, CompelMove, 50 ;ǿ���ƶ���50��������
SetTimer, MouseLButton, 50 ;������50��������
Return

Label1:
{
ControlSend ,,{1},pwd.txt ;����������1����Ӧ����,������������1
Return
}

Label2:
{
ControlSend ,,{2},pwd.txt ;����������2����Ӧ����,������������2
Return
}

Label3:
{
ControlSend ,,{3},pwd.txt ;����������3����Ӧ����,������������3
Return
}

Label4:
{
ControlSend ,,{4},pwd.txt ;����������4����Ӧ����,������������4
Return
}

CompelMove:
{
ControlSend ,,{x},pwd.txt ;ǿ���ƶ�����Ӧ����,������������X
Return
}

MouseLButton:
{
Click ;������
Return
}

~F2::Pause ;����ͣ�����