# 3. HTML 기본문서 만들기
## 3-1. HTML과 첫 만남
### HTML이란?
* 웹 문서를 만드는 언어
* Hyper Text Markup Language의 줄임말
    * HyperText: 문서를 서로 연결해주는 링크
    * Markup: 웹브라우저에 내용을 보여 주는 텍스트, 이미지, 영상 등의 위치를 표시하는 것을 의미
* html 형식
```html
<h1>제목</h1>
<p>텍스트 단락</p>
<table>
    <tr>
        <td>셀1</td>
        <td>셀2</td>
    </tr>
    <tr>
        <td>셀3</td>
        <td>셀4</td>
    </tr>
</table>

```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/a4fada3f-fee1-4c0e-8f99-0401f98b8b03)

---

## 3-2. HTML 구조 파악하기
### HTML 문서의 기본 구조
* HTML 문서는 정해진 형식에 맞추어 내용을 입력해야 함
![image](https://github.com/qlkdkd/2-winter/assets/71871927/796a3206-bfda-412e-bdd2-3f4dd7f400bf)
1. `<!DOCTYPE html>`: 현재 문서가 HTML5 언어로 작성한 웹 문서라는 뜻
2. `<html>~</html>`: 웹문서의 시작과 끝을 나타내는 태그
3. `<head>~</head>`: 웹 브라우저가 웹 문서를 해석하는 데 필요한 정보를 입력하는 부분
4. `<body>~</body>`: 실제로 웹 브라우저 화면에 나타나는 내용

### `<!DOCTYPE html>`: 웹 문서의 유형을 지정하는 선언
* 웹 문서의 첫 부분은 문서유형을 지정하는 `<!DOCTYPE html>` 태그로 시작
```html
<!DOCTYPE html>
```

### `<html>`: 웹 문서의 시작을 알림
* `<!DOCTYPE html>`선언 후 HTML 파일의 시작과 끝을 표시함
* `<html>`: 웹 문서가 시작된다는 뜻
* `</html>`: 웹 문서가 끝났다는 뜻
* `<html>`과 `</html>`태그 사이 웹 문서 소스 작성
* `</html>` 뒤에는 아무 내용도 없어야 함

### `<head>`: 웹브라우저 문서 정보
* `<head>`: 웹브라우저가 알아야 할 정보를 입력하는 곳
* 문서에서 사용할 스타일 시트 파일도 이곳에 연결
#### `<meta>`: 문자 세트를 비롯해 문서 정보 포함
* 메타 정보: 데이터에 관한 데이터
* `<meta>`: 웹브라우저에는 보이지 않지만 웹 문서와 관련된 정보를 지정할 때 사용
* 역할: 화면에 글자를 표시할 때 어떤 인코딩을 사용할 것인지 지정
* 웹서버는 영어가 기본-> 한글로 된 내용 표시할 때 UTF-8이라는 문자세트 사용
* 그 외에 `<meta>`태그 사용해서 웹사이트의 키워드, 간단한 설명, 제작자 등의 정보를 지정할 수 있음
```html
<!--언어 설정-->
<meta charset="UTF-8">
<!--웹 문서 키워드-->
<meta name="keywords" content="html의 구조">
<!--웹 문서 설명-->
<meta name="description" content="html구조 알아보기">
<!--웹 문서 소유자/제작자-->>
<meta name="author" content="Kyeonhee Ko">
```

### `<title>`: 문서 제목
```html
<title>HTML 기본 문서</title>
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/72c659c8-c412-49cc-bfa1-d139b59af9ee)

### `<body>`: 웹 브라우저 내용 표시
* `<body>`와 `</body>`사이에 웹 브라우저에 표시할 내용 입력
* HTML태그는 대부분 body 태그 안에서 사용
```html
<body>
    <h1>
        프론트엔드 웹 개발
    </h1>
    <p>html</p>
    <p>css</p>
    <p>javascript</p>
</body>
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/82c6fcbb-3310-4df6-b86b-9da15e8e2fd0)

---

## [3-3. HTML 파일 만들기]()
![image](https://github.com/qlkdkd/2-winter/assets/71871927/cdf7b4cd-161f-4d0b-b889-7bd01794063e)
### [html 기본구조 자동으로 만들기]()
![image](https://github.com/qlkdkd/2-winter/assets/71871927/cd711b6e-d9e1-48b7-afe2-4042119e318c)

---

## 3-4. 웹 문서 구조를 만드는 시맨틱 태그
* HTML의 태그는 그 이름만 봐도 알 수 있어 시맨틱 태그라고 함
* 예)
   * `<p>`: 텍스트 단락(paragraph)
   * `<a>`: 앵커(anchor)
![image](https://github.com/qlkdkd/2-winter/assets/71871927/53229239-cda1-4cd9-b756-9ad6492a259f)

### `<header>`: 헤더 영역
* 사이트에서의 헤더: 주로 맨 위쪽이나 왼쪽에 존재, 검색 창이나 사이트 메뉴를 삽입

### `<nav>`: 네비게이션 영역
* 같은 웹문서 안에 다른 위치로 연결하거나 다른 웹문서로 연결하는 링크를 만듬
* `<nav>`태그는 웹 문서의 위치에 영향을 받지 않음: 헤더나 푸터, 사이드 바 안에 포함 가능, 또는 독립해서 사용 가능
* 웹 문서에서 `<nav>`태그를 여러개 사용할 경우 각각 id속성을 지정하면 내비게이션마다 다른 스타일을 적용할 수 있음
```html
<header>
    <div id="logo">
        <a href="#"><h1>Dream Jeju</h1></a>
    </div>
    <nav>
        <u1 id="topMenu">
            <li><a href="#">단체 여행</a></li>
            <li><a href="#">맞춤 여행</a></li>
            <li><a href="#">갤러리</a></li>
        </u1>
    </nav>
</header>
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/cb635ebc-585f-4eae-b99b-9956cb0c033f)

### `<main>` 핵심 콘텐츠
* `<main>`태그는 웹문서에서 핵심이 되는 내용 삽입
* 웹 문서마다 다르게 보여주는 내용으로 구성
* 메뉴, 사이드 바, 로고처럼 페이지마다 똑같은 정보는 넣을 수 없음
* 한 번만 사용 가능

### `<article>`: 독립적 콘텐츠
* 웹에서 실제로 보여 주고 싶은 내용을 삽입
* 블로그의 포스트나 뉴스 사이트의 기사처럼 독립된 웹 콘텐츠 항목 같은 것
* 문서 안에는 `<article>` 태그를 여러개 사용 가능. 이 안에 `<section>`태그 삽입 가능

### `<section>`: 콘텐츠 영역
* 몇 개의 콘텐츠를 묶는 용도로 사용

```html
![image](https://github.com/qlkdkd/2-winter/assets/71871927/447e2c2f-0f32-4659-ba80-f1eeb38a7114)

```

### 시맨틱 태그 필요 이유
1. 시맨틱 태그를 사용하면 웹 브라우저가 HTML의 소스 코드만 보고도 어느 부분이 제목이고 메뉴이고 본문 내용인지 쉽게 알 수 있기 때문
2. 문서 구조가 정확히 나눠지므로 PC나 모바일 웹 브라우저와 여러 스마트 기기의 다양한 화면에서 웹 문서를 표현하기가 쉽기 때문
3. 인터넷에서 웹 사이트를 검색할 때 필요한 내용을 정확히 찾을 수 있음

