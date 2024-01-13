year=rep(c(2012:2015), each=12000000)
month=rep(rep(c(1:12), each=1000000), 4)
value=runif(48000000)

library(data.table)
#���� �����ͷ� 4800������ ���� ���� �����������Ӱ� ������ ���̺��� ����
DataFrame=data.frame(year, month, value)
DataTable=as.data.table(DataFrame)

#�������������� �˻��ð��� ����
system.time(DataFrame[DataFrame$year==2012, ])
#���������̺��� �˻��ð��� ����
system.time(DataTable[DataTable$year==2012, ])

#���ɹ��� ���ۺ��� ������� 0.25��
#������ ���̺��� ���� Į���� Ű ���� ����

#Į���� Ű ������ ������ ��� �ڵ� �������� ����
setkey(DataTable, year)
#Ű������ ������ Į���� J ǥ������ ����� �˻� �ð� ����
system.time(DataTable[J(2012)])

#���ɹ��� ���ۺ��� ������� 0.12��
#Ű ���� Ȱ���� ������ ���̺��� Ž�� �ӵ��� �� ���� ���� Ȯ���� �� �ִ�