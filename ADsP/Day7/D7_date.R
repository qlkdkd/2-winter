Sys.Date()
Sys.time()
as.Date("2020-01-01")

#%Y�� ���� ���ڸ�, %y�� ���� ���ڸ�, %m�� ��, %d�� ��, %A�� ���� ��
format(Sys.Date(), '%Y/%m/%d')
format(Sys.Date(), '%A')

#�ð� �����͸� unclass�ϸ� Ÿ�� �������� ���� �� ����
unclass(Sys.time())
as.POSIXct(1577804401, origin='1970-01-01')