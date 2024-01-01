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
