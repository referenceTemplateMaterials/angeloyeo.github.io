---
title: 행벡터의 의미와 벡터의 내적
sidebar:
  nav: docs-ko
aside:
  toc: true
key: 20200909
tags: 선형대수
---

지금까지 우리는 [벡터란 무엇인지에 대해 알아보고](https://angeloyeo.github.io/2020/09/07/basic_vector_operation.html), [행렬과 벡터의 곱](https://angeloyeo.github.io/2020/09/08/matrix_multiplication.html)에 대해 알아보았다.

짧게 요약하자면 벡터란 상수배(곱셈 규칙)와 덧셈 규칙이 정의되는 원소들이라고 하였으며, 이들의 집합에 이 연산들이 정의된 집합을 벡터 공간(vector space)라고 한다고 하였다. 여기서 이러한 상수배와 덧셈 규칙이 정의되는 원소들을 '선형성을 갖는다'라고 표현한다.

또, 행렬은 벡터를 또 다른 벡터로 변환 시키는 일종의 연산자로 볼 수 있으며, 특히 행렬과 벡터의 곱은 행렬의 열벡터들을 얼마나 선형결합 시킬 것인가라는 의미로 볼 수 있다고 하였다.

이번 시간에는 행벡터의 기능과 역할에 대해 알아보고, 이를 통해 벡터의 내적이 왜 기하학적으로 한 벡터에서 다른 벡터로의 정사영과 관련이 되어 있는지를 알아보고자 한다.

<p align = "center">
  <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/pics/2020-09-09-row_vector_and_inner_product/pic1.png">
  <br>
  그림 1. 행벡터의 기능과 역할은 무엇이며 이것이 벡터의 내적의 기하학적 의미와는 어떻게 연관되어 있을까?
</p>

# 행벡터의 기능과 역할

행렬과 행렬의 곱 혹은 행렬과 벡터의 곱에 대해 생각해보면 행렬의 곱을 해석할 수 있는 가장 기본적인 방법은 아래와 같이 곱해지는 행렬 중 왼쪽 행렬의 행 요소들과 오른쪽 행렬의 열 요소들의 값들을 순서대로 곱해주고 더해주는 방법이다.

<p align = "center">
  <img width = "400" src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/pics/2020-09-09-row_vector_and_inner_product/pic2.png">
  <br>
  그림 2. 행렬의 곱에 관한 가장 기본적인 해석
</p>

이것은 [행렬의 곱에 대한 새로운 이해](https://angeloyeo.github.io/2020/09/08/matrix_multiplication.html)편에서 이러한 해석이 행벡터와 역벡터 간의 내적이라고 언급하였다. 하지만, 이번에는 '내적'이라는 용어나 계산 방법을 모른다고 생각하고, 오직 행렬의 곱셈만이 주어진 상태라고 했을 때 행벡터와 열벡터 간에 어떤 일이 일어나는지 알아보도록 하자.

우리는 보통 '벡터'라 하면 열벡터를 우리가 "흔히 말하는" 벡터라고 본다. 이것은 일종의 수학적 관례로써 기준을 잡아둔 것으로 생각하면 된다. 다시 말해, 변화가 되는 대상을 열 벡터로 보자고 관례적으로 잡아둔 것이다.

반면, 행벡터는 열벡터에 대한 함수이다. 무슨 말이냐 하면, 방금 언급했듯 열벡터는 '변화의 대상'이 되는 것에 반해 행벡터는 변화를 시키는 행위자인 것이다.

가령 $[2, 1]$이라는 행벡터와 $[3, -4]^T$라는 열벡터에 대해 다음과 같은 곱셈을 생각해보자.

$$\begin{bmatrix}2 & 1\end{bmatrix}\begin{bmatrix}3\\-4\end{bmatrix} = 2\cdot 3 + 1\cdot(-4) = 6-4 = 2$$

이것을 달리 생각해보면 아래와 같이 함수의 표기로 생각할 수도 있다.

$$\begin{bmatrix}2 & 1\end{bmatrix}\left(\begin{bmatrix}3\\-4\end{bmatrix}\right) = 2$$

즉, 행벡터는 열벡터를 입력으로 받아 스칼라를 출력하는 $f:V\rightarrow\Bbb{R}$인 함수[^1]인 것이다.

# 행벡터는 선형연산자일까?

연산자라는 것은 어떤 입력을 받아 출력을 내뱉는 함수라는 의미와 같으며, 여기서 '선형'이라는 말이 붙는 것은 벡터공간의 요소라면 가져야할 덧셈 법칙과 상수배(곱셈 법칙)이 적용되는 연산자라는 의미이다.

이러한 선형성을 만족하는지 알아보는 것이 왜 중요할까?

그것은 행벡터가 처리 대상인 '데이터'가 아니라 '함수'임에도 선형성을 갖는다면 일반적인 벡터에 적용할 수 있다고 알려진 모든 method들이 적용가능해지는 것이다.

// 여기부터 추가 작성 할 것...

그리고 선형연산자이다.

$$f(\vec{v}+\vec{w}) = f(\vec{v}) + f(\vec{w})$$

예시)

$$\begin{bmatrix}2 & 1\end{bmatrix}\left(\begin{bmatrix}3\\-4\end{bmatrix} + \begin{bmatrix}1\\2\end{bmatrix}\right) 

= \begin{bmatrix}2 & 1\end{bmatrix}\left(\begin{bmatrix}3\\-4\end{bmatrix}\right) + \begin{bmatrix}2 & 1\end{bmatrix}\left(\begin{bmatrix}1\\2\end{bmatrix}\right)$$

$$f(n\vec{w}) = nf(\vec{w})$$

예시)

다시 말해 row vector는

* 열벡터를 입력으로 받아 스칼라(즉, 숫자)를 출력하는 함수
* 선형연산자임. 
* 다시 말해 두 벡터를 더한 채로 함수 출력을 볼 때와 두 벡터의 함수 출력을 합한 것이 같음.
* 또, 선형연산자이기 때문에 입력에 상수배를 해준 채로 함수를 출력할 때와 출력된 함수에 상수배를 해준 것의 결과는 같음.

# 행벡터의 시각화

지금까지 우리는 행벡터는 열벡터를 입력으로 받는 함수라고 언급하였다. 그렇다면 함수를 시각화 한다는 것, 즉 함수를 그린다는 것의 의미는 무엇일까?

함수를 시각화 한다는 것의 의미는 임의의 입력 $x$에 대해 함수의 출력 $f(x)$를 대응시킨 좌표들을 나열한 것이다.

가령 $y=x^2$을 시각화 한다는 것은 시각화하기에 좋은 범위의 $x$, 가령 $-2\leq x \leq 2$ 에 대해 대응되는 $y=f(x)=x^2$ 값을 좌표 평면에 모두 나타낸 것이다.


그렇다면 $\begin{bmatrix}2 & 1\end{bmatrix}$이라는 행벡터를 시각화 한다고 하면, 임의의 벡터 $\begin{bmatrix}x & y \end{bmatrix}^T$에 대해 함수의 출력을 좌표계에 나열하면 된다.

$$\begin{bmatrix}2 & 1 \end{bmatrix}\left(\begin{bmatrix}x \\ y \end{bmatrix}\right) = 2x+ y$$


등고선의 아이디어를 이용하자.

// 등고선 그림 넣을 것 //

즉, 이 등고선을 이용하면 임의의 벡터 $\vec{v}$가 $\begin{bmatrix} 2 & 1\end{bmatrix}$이라는 함수를 통과했을 때의 출력값을 쉽게 시각화 할 수 있게 된다.


<p align = "center">
  <img width = "400" src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/pics/2020-09-09-row_vector_and_inner_product/pic3.png">
  <br>
  그림 3. 행벡터를 통해 출력된 함수값들의 시각화
</p>


<p align = "center">
  <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/pics/2020-09-09-row_vector_and_inner_product/pic4.png">
  <br>
  그림 4. row vector의 scaling에 따른 함수값 등고선의 변화
</p>


## 행벡터가 선형함수라는 것의 의미.

행벡터의 스칼라배

<p align = "center">
  <video width = "400" height = "auto" loop autoplay controls muted>
    <source src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/pics/2020-09-09-row_vector_and_inner_product/pic3.mp4">
  </video>
  <br>
  그림 3. 다양한 스칼라배로 크기가 커지거나 작아지는 행백터에 대응한 시각화
</p>

벡터에 대해 정의할 때 스칼라배와 벡터 간의 합에 대해 정의가 되는 것들을 벡터로 정의한다고 하였으며, 이 벡터는 벡터 공간을 이룬다고 하였다.

따라서, 행벡터에 대한 선형 함수로 생각할 수 있는 행벡터들도 벡터로 간주할 수 있다는 것을 알 수 있다. 즉, 함수를 벡터로 생각한 경우이다.

이 때, 덧셈 법칙과 곱셈 법칙이 정의된 행벡터들로 구성된 집합을 **행공간**이라고 부른다.

행공간은 ~라는 점에서 열공간의 쌍대공간(dual space)라고 볼 수 있다.

지금까지 우리가 행벡터를 행벡터라고 불렀기 때문에 당연히 벡터라고 생각하고 있지만, 이렇듯 엄밀한 잣대를 들이댐으로써 새로운 개념의 벡터에 대해 생각해볼 수 있는 것이다.

# 행벡터와 벡터의 내적

벡터에 왜 정사영을 해주게 왜 내적의 기하학적 의미란 말인지?

[^1]: 좀 더 엄밀하게는 범함수(functional)이라고 하는게 맞는 표현이지만, 엄밀한 내용에 대해선 넘어가도록 하자.