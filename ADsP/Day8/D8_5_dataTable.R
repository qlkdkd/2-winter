year=rep(c(2012:2015), each=12000000)
month=rep(rep(c(1:12), each=1000000), 4)
value=runif(48000000)

library(data.table)
#같은 데이터로 4800만개의 행을 갖는 데이터프레임과 데이터 테이블을 생성
DataFrame=data.frame(year, month, value)
DataTable=as.data.table(DataFrame)

#데이터프레임의 검색시간을 측정
system.time(DataFrame[DataFrame$year==2012, ])
#데이터테이블의 검색시간을 측정
system.time(DataTable[DataTable$year==2012, ])

#명령문의 시작부터 종료까지 0.25초
#데이터 테이블의 연도 칼럼에 키 값을 설정

#칼럼이 키 값으로 설정될 경우 자동 오름차순 정렬
setkey(DataTable, year)
#키값으로 설정된 칼럼과 J 표현식을 사용한 검색 시간 측정
system.time(DataTable[J(2012)])

#명령문의 시작부터 종료까지 0.12초
#키 값을 활용한 데이터 테이블의 탐색 속도가 더 빠른 것을 확인할 수 있다