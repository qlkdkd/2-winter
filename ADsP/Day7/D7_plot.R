x=c(1:10)
y=rnorm(10)
#�Ķ���� type���� p�� ��, l�� ����, b�� ���� ����, n�� �ƹ��͵� ǥ������ ������ �ǹ�
#xlim���� x���� ����, ylim���� y���� ������ ������ �� �ִ�
#xlab, ylab���� �� ���� �̸��� ������ �� �ִ�
#main���� �������� �̸��� ���� �� �ִ�
plot(x, y, type='l', xlim=c(-2, 12), ylim=c(-3, 3), xlab='X axis', ylab='Y axis', main='Test plot')
abline(v=c(1, 10), col='blue')