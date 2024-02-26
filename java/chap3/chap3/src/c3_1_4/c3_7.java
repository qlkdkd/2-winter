package c3_1_4;

public class c3_7 {
    public static void main(String[] args) {
        String a = "Hello java";
        System.out.println(a.indexOf("java"));//문자열 내 특정 문자 위치 검색
        System.out.println(a.contains("java"));//문자열 내 특정 문자 판별
        System.out.println(a.charAt(6));//특정 인덱스에 위치한 문자 출력
        System.out.println(a.replaceAll("java", "world"));//특정 문자열 대체
        System.out.println(a.substring(0, 4));//특정 위치 문자열 제거
        System.out.println(a.toUpperCase());//대문자 변경
    }
}
