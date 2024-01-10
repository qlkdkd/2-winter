Sys.Date()
Sys.time()
as.Date("2020-01-01")

#%Y는 연도 네자리, %y는 연도 두자리, %m은 월, %d는 일, %A는 요일 등
format(Sys.Date(), '%Y/%m/%d')
format(Sys.Date(), '%A')

#시간 데이터를 unclass하면 타임 스탬프를 얻을 수 있음
unclass(Sys.time())
as.POSIXct(1577804401, origin='1970-01-01')