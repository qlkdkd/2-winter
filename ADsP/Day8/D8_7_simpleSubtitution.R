#�׽�Ʈ�� ���� �������� ���� iris ������ ����
copy_iris=iris#���� ������ ����
dim(copy_iris)#���� ������ ��

copy_iris[sample(1:150, 30), 1]=NA#Sepal.length�� 30���� ������ ����
copy_iris=copy_iris[complete.cases(copy_iris), ]# �ܼ���ġ��
dim(copy_iris)#30���� �������� ������ ���� ������ �������� ��