#�׽�Ʈ�� ���� �������� ���� iris ������ ����
copy_iris=iris#���� �����͸� ����
dim(copy_iris)#���� ������ ��

#��� ��ġ��
meanValue=mean(copy_iris$Sepal.Length, na.rm=T)#�������� ������ ��� ���
copy_iris$Sepal.Length[is.na(copy_iris$Sepal.Length)]=meanValue#��� ��ġ

#centralImputation�� Ȱ���� �߾Ӱ� ��ġ
library(DMwR2)
copy_iris[sample(1:150, 30), 1]=NA
copy_iris=centralImputation(copy_iris)