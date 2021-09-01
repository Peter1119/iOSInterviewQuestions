# 🧑‍💻 Swift Standard Library의 map, filter, reduce, compactMap, flatMap에 대하여 설명하시오



map - 어떤 array의 요소를 인자로 받아 인자를 변경하고 변경 값을 리턴하는데, 그 요소들을 종합하여 새로운 배열을 만드는 함수를 인자로 받는 고차 함수.

filter - 어떤 array의 요소를 인자로 받아서 인자의 어떤 속성을 특정 값과 비교해서 bool 값을 리턴하는 함수를 filter로 전달하는데, 이 때 true를 리턴한 인자만으로 새로운 배열을 만드는 고차 함수.

reduce - 초깃값을 설정하고 , array의 두 요소를 파라미터로 받아 더한 값을 초깃값과 더하고, 이 값이 초깃값이 되며 요소들을 더해나가는 함수를 받는 고차함수.

compactMap - map을 실행할 때, array의 요소 중 nil이 return 된 요소를 제외한 요소들로 새로운 배열을 만드는 고차함수.

flatMap - array의 요소들이 또 squence를 이루고 있을 때, squence들을 flat하게 만들어 array를 일차원 array로 만드는 고차함수.