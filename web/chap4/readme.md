# 4. 웹 문서에 다양한 내용 입력하기

## 4-1. 텍스트 입력하기
### 제목을 나타내는 `<hN>` 태그
```html
<hN>제목</hN>
```
* h: 제목, heading을 의미
* N: 숫자, 1부터 6까지 입력 가능, 숫자가 작을 수록 텍스트는 커짐

```html
<body>
    <h1>레드향</h1>
    <h2>레드향 샐러드 레시피</h2>
    <h2>상품 구성...</h2>
</body>
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/2a03f713-71eb-45d3-ad3b-670677e5da05)

### `<p>`: 텍스트 단락, `<br>`: 줄바꿈
#### `<p>`
```html
<p>내용</p>
<br>
```
* `<p>`와 `</p>` 태그 사이에 텍스트를 입력하면 텍스트 앞뒤로 빈 줄이 생기면서 텍스트 단락이 만들어짐
* 편집기에서 줄을 바꾸더라도 웹 브라우저에서는 한 줄로 표시됨
```html
<body>
    <h1>레드향</h1>
    <p>껍질에 붉은 빛이 돌아 레드향이라 불린다.</p>
    <p>레드향은 한라봉과 귤을 교배한 것으로
        일반 귤보다 2~3배 크고, 과육이 붉고 통통하다.
    </p>
    <p>비타민 C와 비타민 P가 풍부해 혈액순환, 감기예방 등에 좋은 것으로 알려져 있다.</p>
</body>
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/a1ca8e28-68f1-4e89-b55c-bf3a71b8221e)

#### `<br>`
* `<br>`태그를 사용하면 줄을 바꿀 수 있음
* `<br>`태그는 단독으로 사용하므로 닫는 태그가 필요 없음
```html
<body>
    <h1>레드향</h1>
    <p>껍질에 붉은 빛이 돌아 레드향이라 불린다.</p>
    <p>레드향은 한라봉과 귤을 교배한 것으로
        <br>일반 귤보다 2~3배 크고, 과육이 붉고 통통하다.
    </p>
    <p>비타민 C와 비타민 P가 풍부해 <br>혈액순환, 감기예방 등에 좋은 것으로 알려져 있다.</p>
</body>
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/1dbf0363-bbd9-4ebf-9f4f-c606d703d14d)


### `<blockquote>`: 인용할 때 사용
* 브라우저가 인용문을 인식할 수 있게 하려면 `<blockquote>`와 `</blockquote>`태그로 인용문을 감싸주어야 한다.
* 웹 브라우저는 `<blockquote>`태그 안의 내용을 인용문으로 알고 다른 텍스트보다 약간 들여씀

``` html
<body>
    <h1>레드향</h1>
    <p>껍질에 붉은 빛이 돌아 레드향이라 불린다.</p>
    <p>레드향은 한라봉과 귤을 교배한 것으로
        <br>일반 귤보다 2~3배 크고, 과육이 붉고 통통하다.
    </p>
    <blockquote>비타민 C와 비타민 P가 풍부해 <br>혈액순환, 감기예방 등에 좋은 것으로 알려져 있다.</blockquote>
</body>
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/fdef5b30-355d-4fc7-bb36-10443c2bdb52)

### `<b>`, `<strong>`: 굵게 표시
```html
<b>굵게 표시</b>
<strong>굵게 강조</strong>
```
* 경고나 주의사항처럼 중요한 내용을 강조-> strong
* 단순히 굵게 표시: b

```html
<body>
    <h1>레드향</h1>
    <p>껍질에 붉은 빛이 돌아 <b>레드향</b>이라 불린다.</p>
    <p>레드향은 한라봉과 귤을 교배한 것으로
        <br>일반 귤보다 2~3배 크고, 과육이 붉고 통통하다.
    </p>
    <blockquote>비타민 C와 비타민 P가 풍부해 <br><strong>혈액순환, 감기예방</strong> 등에 좋은 것으로 알려져 있다.</blockquote>
</body>
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/98be2c54-cb93-4535-bc13-2d2bc95b37a2)

### `<em>`, `<i>`: 기울여서 표시
```html
<em>이탤릭체로 강조할 텍스트</em>
<i>이탤릭체로 표시할 텍스트</i>
```
* em
    * 강조를 뜻하는 emphasis에서 유래
    * 문장에서 흐름상 특정 부분을 강조할 때 사용
* i
    * 이탤릭체에서 유래
    * 마음속의 생각이나 용어, 관용구 등에 사용
 
### 기타 텍스트 관련 태그

종류|설명|예시
---|---|---
`<abbr>`|줄임말 표시, title 속성을 함께 사용할 수 있음|`<abbr title="Internet of Things">IoT</abbr>`
`<cite>`|웹 문서나 포스트에서 참고 내용 표시|`<p>내가 경험한 가장 흥미진진한 일은 누군가를 만나는 일이다-영화<cite>중</cite>`
`<code>`|컴퓨터 인식을 위한 소스코드|`<code>function savetheLocal</code>`
`<small>`|부가 정보처럼 작게 표시해도 되는 텍스트|`<p>가격: 13000원 <small>(부가세 별도)</small></p>`
`<sub>`|아래첨자 표시|`<p>물의 화학식: H<sub>2</sub>O</p>`
`<sup>`|윗첨자 표시|`<p>E=mc<sup>2</sup>`
`<s>`|취소선 표시|`<p><s>34000원</s>19000원</p>`
`<u>`|밑줄 표시|`<u>텍스트에 단순히 밑줄 긋기</u>`
`<ins>`|공동 작업 문서에 새로운 내용 삽입|`<ins>새로운 내용 삽입</ins>`
`<del>`|공동 작업 문서에 기존 내용 삭제|`<del>기존 내용 삭제</del>`

#### 예제
```html
<body>
    <p>
        <i>비타민 C</i>와 <i>비타민 p</i>가 풍부해<br>
        혈액순환<sup>1</sup> <ins>또는</ins>
        감기예방<sub>2</sub> 등에
        좋<del>은 것으로 알려져 있</del>다
    </p>
</body>
```

---

## 4-2. 목록 만들기
### `<ol>`, `<li>`: 순서 있는 목록
```html
<ol>
        <li>항목 1</li>
        <li>항목 2</li>
    </ol>
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/a1a7e057-0180-4a15-b45c-7499920713a5)

#### type, start 속성
종류|설명
---|---
`type="1"`|숫자(기본값)
`type="a"`|영문 소문자
`type="A"`|영문 대문자
`type="i"`|로마숫자 소문자
`type="I"`|로마숫자 대문자

예시
```html
<ol type="a">
        <li>항목 1</li>
        <li>항목 2</li>
    </ol>
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/ae970851-02e0-4180-bfa1-04b0900f8cfe)

### `<ul>`, `<li>`: 순서 없는 목록
```html
<ul>
    <li>항목 1</li>
    <li>항목 2</li>
</ul>
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/2c95dd03-71fa-46e9-9e77-c5195117b49d)

### `<dl>`, `<dt>`, `<dd>`: 설명 목록
```html
    <dl>
        <dt>이름</dt>
        <dd>값</dd>
    </dl>
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/6dff7fab-d0b0-4f35-9229-367a0285e04c)
* 설명 목록: 이름과 값 형태로 된 목록

---

## 4-3: 표 만들기
### `<table>`, `<caption>`: 표 만들기
### `<tr>`, `<td>`: 표의 행과 열
```html
    <table>
        <caption>표 제목</caption>
        <tr>
            <td>1행 1열</td>
            <td>1행 2열</td>
        </tr>
        <tr>
            <td>2행 1열</td>
            <td>2행 2열</td>
        </tr>
    </table>
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/4a8baf18-c47a-4d49-b0f8-6024327a6bd5)

* table: 표의 시작과 끝
* caption: 표 제목
* tr: 테이블 행
* td: 테이블 열

### `<thead>`, `<tbody>`, `<tfoot>`: 표의 구조
* thead: 표의 제목
* tbody: 표의 본문
* tfoot: 표의 요약
```html
    <h2>상품 구성</h2>
    <table>
        <caption>선물용과 가정용 상품 구성</caption>
        <thead>
            <tr>
                <th>용도</th>
                <th>중량</th>
                <th>개수</th>
                <th>가격</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>선물용</td>
                <td>3kg</td>
                <td>11~16과</td>
                <td>35000원</td>
            </tr>
        </tbody>
    </table>
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/12031fb2-3544-4437-a941-13fa372ce3f7)

### `rowspan`, `colspan`: 행/열 합치기
```html
<td rowspan="합칠 셀의 개수>셀의 내용</td>
<td colspan>="합칠 셀의 개수>셀의 내용</td>
```
![image](https://github.com/qlkdkd/2-winter/assets/71871927/4f024361-30d5-4a12-900e-7e397abc9ea3)

#### 예제
```html

```
