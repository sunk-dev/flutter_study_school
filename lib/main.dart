
import 'dart:io';
void main() {

  // 레코드 :
  // 포지셔널 파라미터를 이용한 레토드
  // 정확함 위치에 어떤 타입의 값이 입력될지 지정할수 있음
  //(string int)는 첫번째 값은 String 타립, 두번째는 int 타입
  (String,int) minji=('민지',20);
  print(minji);
  //레코드에서 정의한ㄴ 순서대로 타입을 입력하지 않으면 에러 발생

  //특정 순서의 레코드 값을 가져오기
  (String,int,bool) minji2=('민지',29,true);
  print(minji2.$1);
  print(minji2.$2);
  print(minji2.$3);

  //네임드 파라미터를 이용한 레코드
  ({String name,int age}) minji3=(name: '민지',age: 23);
  print(minji3);

  //2 구조 분해

  //리스트에서 의 구조분해 사용 예시
  final[minji4,haerin]=['민지','혜린'];
  print(minji4);
  print(haerin);

  //리스트에서의 스프레드 연산자를 이용하 구조 분해 사용 예제
  final numbers=[1,2,3,4,5,6,7,8];
  //스프레드 연산자를 사용하게 되면 중간의 값들을 버릴수 있다.
  //At most one rest element is allowed in a list or map pattern. -> 리스트나 맵 패턴에서 최대 1개의 스프레드 연산자만 이용 가능
  final[x,y,...,z]=numbers;

  print(x);
  print(y);
  print(z);

  // final [x,y,...,z,...,a]=numbers; -> 이건 안됨

  // 3. 맵에서 구조 분해 사용 예제
  /*final minjiMap = {'name': '민지', 'age': 19};
  // 위의 맵의 구조와 똑같은 구조로 구조 분해하면 됩니다.
  final {'name': name, 'age': age} = minjiMap;

  // name: 민지
  print('name: $name');
  // age: 19
  print('age: $age');*/

  //클래스에서의 구조 분해 사용 예제
  final minji5=Idol(name: '민지', age: 19);

  //클ㄹ래스의 생성자 구조와 똑같이 구조 분해 하면 됨
  final Idol(name:name,age:age)=minji5;
  print(name);
  print(age);





}
class Idol{
  final String name;
  final int age;

  Idol({
    required this.name,
    required this.age,
});
}

