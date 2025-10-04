## defer 호출 순서

defer문을 만나면 순차적으로 스택에 저장되고 스코프 종료 후 하나씩 pop해서 실행하기에 마지막 defer문이 가장 먼저 실행된다. defer문을 만나기 전에 종료되면 스택에 저장 될 수 없음으로 당연하게도 스코프 종료 후에도 defer문은 실행 되지 않는다







참고

https://www.notion.so/defer-51013342c2b44b329995bc4841989cba

https://www.notion.so/defer-defer-94b30eecec244821bb360a9e5cb501e3