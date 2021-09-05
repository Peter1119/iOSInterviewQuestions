# 🐥 Convinience init에 대해 설명하시오



- ### 보조 이니셜라이져

  ### 클래스의 기본 이니셜라이져를 도와주는 역할





- ### convinience init은 같은 클래스에서 다른 이니셜라이져를 호출해야만 한다.



### 사용하는 방식은 convinience init 안에 있는 기본 이니셜라이저 호출 부에서 디폴트로 값을 정해 놓을 속성들의 값은 미리 적어두고, 값을 새로 주입 받을 속성에 대해서만 convinience init으로부터 주입 받는 방식으로 사용된다. convinience init 블록 안에서 self.init()을 작성하고,  convinience init으로 새로 주입 받을 값을 self init안에 주입한다.
