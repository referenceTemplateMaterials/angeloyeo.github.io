---
title: 카이제곱 분포와 검정
sidebar:
  nav: docs-ko
aside:
  toc: true
key: 2021213
tags: 통계학
---

# 카이 제곱 분포

사실상 통계학을 처음 공부하면서 가장 어려운 부분은 용어라고 말해도 과언이 아니다. 그리스 문자 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq1.png">는 영어로는 chi라고 쓰고 읽기는 '카이'라고 읽는다.

거기다가 제곱까지 붙어있으니... 우리는 도통 친해지기 어려운 새로운 용어를 또 마주해야 하는 것이다.

사실 카이제곱 분포는 그렇게 어려운 분포가 아니다. 생각보다는 직관적이다.

양의 정수 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq2.png">에 대해 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq3.png">개의 독립적이고 표준정규분포를 따르는 확률변수 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq4.png">를 정의하면 자유도 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq5.png">의 카이제곱 분포는 확률변수

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq6.png"> <br> 식 (1) </p>

[//]:# (식 1)

의 분포이다.

## 카이제곱 분포 시뮬레이션

말이 어렵다면, 이렇게 다시 한번 생각해보자. 표준정규분포를 생각해보고 여기서 변수 한개만 랜덤하게 뽑아보자.

그런 다음 그 변수를 제곱해서 histogram에 카운트를 시켜보자. 그림으로 보면 다음과 같다.

<p align = "center">
  <img width = "600" src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/pics/2021-12-13-chi_square/pic1.png">
  <br>
  그림 1. 자유도 1인 카이제곱 분포를 얻는 시뮬레이션 과정
</p>

이런 방식으로 무수히 많이 반복해보면 다음과 같은 히스토그램을 얻을 수 있음을 알 수 있다.

아래의 영상에서는 1000번만 반복해보았다.

<p align = "center">
  <video width = "500" height = "auto" loop autoplay controls muted>
    <source src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/pics/2021-12-13-chi_square/pic2.mp4">
  </video>
  <br>
  그림 2. 자유도 1인 카이제곱 분포 획득 시뮬레이션
</p>

이 결과를 실제 자유도가 1인 카이제곱 분포와 비교해보면 다음과 같이 상당히 일치하는 것을 알 수 있다.

<p align = "center">
  <img width = "500" src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/pics/2021-12-13-chi_square/pic3.png">
  <br>
  그림 3. 시뮬레이션과 자유도 1인 카이제곱 분포의 비교
</p>

같은 방식으로 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq7.png">인 경우의 카이제곱 분포도 시뮬레이션 해볼 수 있다.

<img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq8.png">인 경우와 다른 점은 표준정규분포에서 변수 세 개를 뽑고, 그 값들을 제곱하여 더한다는 것에 차이가 있다.

<p align = "center">
  <img width = "600" src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/pics/2021-12-13-chi_square/pic4.png">
  <br>
  그림 4. 자유도 3인 카이제곱 분포를 얻는 시뮬레이션 과정
</p>

마찬가지로 1000번 반복해보면 다음과 같은 histogram을 얻을 수 있다.

<p align = "center">
  <video width = "500" height = "auto" loop autoplay controls muted>
    <source src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/pics/2021-12-13-chi_square/pic5.mp4">
  </video>
  <br>
  그림 5. 자유도 3인 카이제곱 분포 획득 시뮬레이션
</p>

마지막의 히스토그램과 실제 자유도가 3인 카이제곱 분포를 비교하면 다음과 같다.

<p align = "center">
  <img width = "500" src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/pics/2021-12-13-chi_square/pic6.png">
  <br>
  그림 6. 시뮬레이션과 자유도 3인 카이제곱 분포의 비교
</p>

## 다양한 자유도에 따른 카이제곱 분포의 형태

위의 시뮬레이션에서 봤던 것 처럼 카이제곱 분포는 통계량의 정의 상 표준정규분포로부터 얻은 랜덤 변수들을 "제곱"해 더하기 때문에 양의 확률변수에 한해서만 존재한다는 것을 알 수 있다.

또, "더한"것이기 때문에 더해주는 변수의 수가 많아질 수록 정규분포에 가까워진다. ([중심극한정리](https://angeloyeo.github.io/2020/09/15/CLT_meaning.html))

<p align = "center">
  <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/pics/2021-12-13-chi_square/pic7.png">
  <br>
  그림 7. 자유도 1~4에 대응되는 카이제곱 분포
</p>

## 카이제곱 분포의 쓸모?

그렇다면 왜 굳이 표준정규분포로 부터 얻는 랜덤 변수들을 제곱해서 더해주는 걸까? 이렇게 해주었을 때 어떤 쓸모가 있을까?

카이제곱 분포는 오차(error) 혹은 편차(deviation)를 분석할 때 도움을 받을 수 있는 분포다.

이것을 이해하기 위해서는 우리가 보통 error를 정규분포로 설계한다는 점을 이해해야 한다.

가령, 회귀분석을 이용한 모델 제작 시, 우리가 얻은 데이터들은 모델의 출력값을 중심으로 하는 정규분포에서 랜덤하게 샘플링되어 얻은 값이라고 보는 것이다.

<p align = "center">
  <img src = "https://i.stack.imgur.com/Wqrn4.png">
  <br>
  그림 8. 회귀분석 시 오차에 대한 분포 설정
  <br>
  출처: <a href = "https://stackoverflow.com/questions/60143913/the-random-error-term-is-assumed-to-follow-the-normal-distribution-with-a-mean-o">Stack Overflow</a>
</p>

그것 뿐만 아니라, 중심극한정리에 따라 샘플수가 무수히 많고 합(sum)을 이용해 오차를 정의하는 경우 오차의 분포는 정규분포를 따르게 된다.

그러므로 이렇듯 오차 혹은 편차에 대한 분석을 수행할 때 카이제곱 분포를 이용하면 이 오차 혹은 편차가 우연히 발생할 수 있다고 볼 수 있을만한 수준의 것인지 그렇지 않은지를 판별할 수 있게 되는 것이다.

# 카이제곱 검정

적합도 검정(goodness-of-fit test)과 교차 분석(cross tabulation analysis)을 이용할 때 카이제곱 분포를 이용하는 경우가 많다.

두 경우 모두 카이제곱 통계량을 구하기 위해 다음과 같은 식을 이용한다.

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq9.png"> <br> 식 (2) </p>

[//]:# (식 2)

위 식은 피어슨 카이제곱 통계량(Pearson's chi-squared statistics)이라고도 부른다.

여기서 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq10.png">는 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq11.png">번째 데이터에 대한 관찰값, <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq12.png">는 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq13.png">번째 데이터에 대한 기댓값이다.

위 식은 처음 식 (1)에서 제시한 카이제곱 통계량과는 다른 값으로 보인다. 

우선 아래의 식

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq14.png"> </p>

에서 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq15.png">은 편차의 제곱을 말하는 것이고 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq16.png">로 나눠준 것은 정규화 시켜주기 위한 행위로 볼 수 있을 것이다. 그래서, summation 기호 안에 들어가있는 수식이 편차 제곱과 관련된 식이며 정규화된 변수라는 것을 짐작할 수 있다.

실제로 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq17.png">는 특정 정규분포를 따르고, 이것들을 모두 합한 값은 카이제곱 분포를 따를 수 있음을 증명할 수 있다. 그러므로 식 (1)에서 제시한 통계량과 같은 역할을 하는 것임을 증명할 수 있다. (증명은 문서 맨 아래에 ...)

증명 과정에서 확인할 수 있듯이 식 (2)가 항상 카이제곱 분포를 따르는 것은 아니고 중심극한정리를 이용해 증명하기 때문에 전체 데이터 세트의 크기가 충분히 커야한다. 일반적으로는 모든 기대 빈도가 5이상이 될 정도의 크기라면 식 (2)가 카이제곱 분포를 따른다고 본다.

## 적합도 검정

적합도 검정은 독립변수가 하나이고 이론적으로 기대되는 빈도의 분포(frequency distribution)와 관찰한 빈도의 분포를 비교하기 위해 사용할 수 있다.

여기서 독립변수는 범주형 변수(categorical variable)이라는 점도 꼭 짚고 넘어가도록 하자.

가령 예를 들어 아래와 같은 데이터셋을 생각해보자.

<p align = "center">
  <img width = "500" src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/pics/2021-12-13-chi_square/pic9.png">
  <br>
  그림 9. 적합도 검정 수행해보기 위한 데이터셋
</p>

그림 9에 있는 데이터셋에서는 5가지 맛이 섞여 있는 사탕 주머니에서 총 100개의 사탕을 집어들어 어떤 맛의 사탕들을 고르게 되었는지 확인해본 가상의 실험이다.

처음에 예측하기로는 5가지 맛 사탕이 모두 골고루 들어 있을 것이라고 생각하였으므로 기댓값은 20개씩 설정하였다.

식 (2)의 카이제곱 검정을 위한 식을 그대로 적용해보면 다음과 같은 통계량을 얻을 수 있는 것을 알 수 있다.

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq18.png"> </p>

총 5개의 카테고리가 있기 때문에 자유도는 4이다. 자유도가 4일 때 p-value 0.05에 해당하는 카이제곱 값(오른쪽 단측)은

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq19.png"> </p>

이다. 따라서, 이 사탕 주머니에 있는 사탕 5가지 종류 중 하나라도 다른 비율로 섞여있다고 보기에는 어렵다는 것이다. 아마 우연히 골고루 사탕을 집어들지 못했을 것으로 결론지을 수 있다.

## 교차 분석

교차 분석은 범주형 변수가 여러 개인 경우에 적용하는 분석 방법이다. 교차 분석의 목적은 여러 범주형 변수의 범주 간 차이가 기댓값에서 유의하게 벗어나는지 확인하는 것이다. 가령 아래와 같이 성별, 중국집 메뉴의 두 개의 범주형 변수에 대한 데이터를 확인해보자.

<p align = "center">
  <img width = "500" src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/pics/2021-12-13-chi_square/pic10.png">
  <br>
  그림 10. 교차 분석을 수행하기 위한 데이터셋
</p>

위 데이터 셋은 범주형 변수가 두 개이며 성별 변수에는 범주가 2개, 메뉴 변수에는 범주가 3개인 케이스이다.

교차 분석에서도 마찬가지로 식 (2)에서 제시하는 통계량을 사용할 수 있다.

이 때, 기댓값을 계산해야 하는데 각 cell의 기댓값은 다음과 같이 계산할 수 있다.

<center> 

기댓값 = 해당 행 전체 합 x 해당 열 전체 합 / 전체 데이터 수

</center>

<p align = "center">
  <img width = "500" src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/pics/2021-12-13-chi_square/pic11.png">
  <br>
  그림 11. 교차 분석 데이터셋의 기대빈도를 계산하는 방법과 결과
</p>

그리고 교차분석 시 테이블의 행 갯수를 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq20.png">, 열 갯수를 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq21.png">라고 했을 때 자유도는 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq22.png">로 계산한다.

여기서 교차분석을 수행한다는 것은 각 메뉴별로 성별 간 선택의 차이를 보이는지, 혹은 각 성별 별로 메뉴 선택의 차이를 보이는지를 알아보는 것에 목적이 있다.

식 (2)에 따라 통계량을 구하면,

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq23.png"> </p>

이 때, 자유도는 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq24.png"> 이고 이 자유도에서 상위 95%에 해당하는 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq25.png"> 값은

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq26.png"> </p>

임을 알 수 있다. 따라서, 우리가 구한 통계량이 5.9915보다는 작은 것을 알 수 있으며 성별 및 메뉴판에 대해 기댓값에서 유의하게 벗어나지 않는 결과를 보인다는 것을 알 수 있다.



## 피어슨 카이제곱 통계량 증명 (스킵 가능)

※ 이 증명은 첫 번째, 두 번째 참고 문헌의 내용을 옮겨 적고, 그것에 부연설명을 달아놓은 것 입니다.

※ 이 증명을 잘 이해하기 위해선 아래의 내용에 대해 알고 오시는 것이 좋습니다.

* 베르누이 분포, 베르누이 시행
* [중심극한정리의 의미](https://angeloyeo.github.io/2020/09/15/CLT_meaning.html)
* [중심극한정리의 증명](https://angeloyeo.github.io/2020/01/10/CLT_proof.html)
* [Sylvester's theorem: 위키피디아](https://en.wikipedia.org/wiki/Determinant#Sylvester.27s_determinant_theorem)
* [행렬의 닮음: 위키피디아](https://ko.wikipedia.org/wiki/%ED%96%89%EB%A0%AC%EC%9D%98_%EB%8B%AE%EC%9D%8C)
* [공분산 행렬의 의미(PCA 편의 글 꼭지)](https://angeloyeo.github.io/2019/07/27/PCA.html#%EA%B3%B5%EB%B6%84%EC%82%B0-%ED%96%89%EB%A0%AC%EC%9D%98-%EC%9D%98%EB%AF%B8)

※ 이 증명 부분은 전혀 이해하지 못하고 지나가도 카이제곱 검정을 수행하는 데에는 전혀 지장이 없습니다.

이 증명에서 보이고자 하는 것은

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq27.png"> </p>

이 정말 카이제곱 분포를 따르는가라고 할 수 있다.

<img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq28.png">개의 박스에 총 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq29.png">개의 공을 담는 케이스를 상상해보자.

각각의 상자에는 확률적으로 공이 들어가게 되어서 각각의 상자에 공이 들어가게 되는 확률이 정해져 있다고 해보자.

그래서 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq30.png">개의 상자 안에 공이 들어갈 확률을

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq31.png"> </p>

이라 하고, <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq32.png">이라고 할 수 있다.

그리고 각 상자 안에 들어간 공의 개수를

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq33.png"> </p>

이라고 하자. 그렇다면 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq34.png">이다.


이 상황에서 아래의 식이 성립하는지 알 수 있다면 우리는 피어슨 카이제곱 통계량이 카이제곱 분포를 따르는지 증명할 수 있다.

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq35.png"> </p>

여기서 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq36.png">은 자유도가 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq37.png">인 카이제곱 분포를 의미한다.

---


여기서 실제 공을 던져본다고 상상해보자. 상자는 총 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq38.png">개가 있고, 여기서 첫 번째 시행(<img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq39.png">)으로 공을 던졌을 때 공이 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq40.png">번째 상자(<img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq41.png">)에 들어간다는 것을 수학적으로 아래와 같이 표현하자.

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq42.png"> </p>

이렇듯 딱 한번만 '성공' 혹은 '실패'의 경우만을 두고 진행하는 시행을 베르누이 시행(Bernoulli trial)이라고 하고 이 때의 기댓값과 분산은

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq43.png"> </p>

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq44.png"> </p>

와 같다는 것이 알려져 있다.

이 때, 우리는 시행을 총 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq45.png">번 수행하자. 즉, <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq46.png">개의 공을 모두 한번씩 던져보는 것이다.

그러면 중심극한정리에 따라 다음이 성립한다는 것을 알 수 있다. (중심극한정리 증명 편의 식 (11)을 참고)

아래와 같이 정규화된 변수는 표준정규분포를 따르게 된다는 것이다.

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq47.png"> </p>

여기서 수식을 조금 바꾸면

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq48.png"> </p>

라는 점을 알 수 있게 되며 우리가 증명하고자 했던 식과 유사해진 결과를 확인할 수 있다.

여기서 편의를 위해 평균이 0, 분산이 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq49.png">인 정규분포를 따른다는 표기를 다음과 같이 해보자(엄밀한 표기는 아니다.).

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq50.png"> </p>

생각해보면 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq51.png">나 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq52.png">나 모두 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq53.png"> 차원 벡터이기 때문에 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq54.png">의 구조를 정확히 파악하기 위해선 공분산 행렬을 계산해보아야 한다.

따라서, <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq55.png">와 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq56.png"> 간의 공분산을 계산해보면,

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq57.png"> </p>

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq58.png"> </p>

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq59.png"> </p>

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq60.png"> </p>

여기서 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq61.png">만 따로 계산해보면,

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq62.png"> </p>

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq63.png"> </p>

여기서 케이스를 세분화 해보면 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq64.png"> 인 경우와 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq65.png">인 경우로 나눌 수 있다.

그런데, <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq66.png">인 케이스는 하나의 공이 두 개의 박스에 동시에 들어가는 경우이므로 기댓값은 0이다. 따라서,

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq67.png"> </p>

전체 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq68.png"> 개의 케이스 중 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq69.png">인 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq70.png">개의 케이스가 제외된 것이므로 총 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq71.png">개에 대한 계산 결과이며 그 결과는 다음과 같다.

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq72.png"> </p>

원래의 공분산 식에 이 결과를 대입하면 다음과 같다.

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq73.png"> </p>

이 결과가 말해주는 것은 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq74.png">는 다음과 같은 공분산 행렬을 갖는다는 것이다.

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq75.png"> </p>

이 공분산 행렬은 어떤 벡터 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq76.png">을 놓고 생각해보면 다음과 같이 쓸 수도 있는 것이다.

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq77.png"> </p>

여기서 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq78.png">은 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq79.png"> 크기의 단위행렬이다.

그러는 한편 이 공분산 행렬의 고윳값을 계산하기 위해 특성방정식을 계산해보면,

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq80.png"> </p>

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq81.png"> </p>

일반적으로 행렬식의 성질에 의해 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq82.png"> 크기의 행렬 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq83.png">에 대해 다음이 성립한다.

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq84.png"> </p>

그러므로,

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq85.png"> </p>

여기서 임의의 행벡터 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq86.png">과 열벡터 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq87.png">에 대해 Sylvester's theorem은 다음을 말해준다.

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq88.png"> </p>

그러므로,

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq89.png"> </p>

여기서 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq90.png">는 확률에 관한 행렬이므로 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq91.png">이다.

따라서 최종적으로

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq92.png"> </p>

임을 알 수 있다. 그러므로 공분산 행렬 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq93.png">의 고윳값은 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq94.png">이 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq95.png">개 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq96.png">이 1개 있다는 것이다.

그러므로 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq97.png">의 닮은 행렬(similar matrix)을 생각해볼 때 적절한 회전 행렬 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq98.png">가 있다면 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq99.png">는 다음과 같이도 선형변환 될 수 있는 것이다.

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq100.png"> </p>

그러므로 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq101.png">라는 새로운 변수를 생각해보면 이 변수는 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq102.png">인 정규분포를 따르며 

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq103.png"> </p>

는 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq104.png">라는 행렬의 norm <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq105.png">에 해당하므로 회전행렬 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq106.png">을 곱하더라도 그 norm의 크기는 바뀌지 않는다. 그러므로,

<p align = "center"> <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq107.png"> </p>

와 같으므로 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq108.png">는 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq109.png">개의 표준정규분포 랜덤변수가 제곱합 되어 있는 것과 같다. 그러므로 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq110.png">는 자유도가 <img src = "https://raw.githubusercontent.com/angeloyeo/angeloyeo.github.io/master/equations/2021-12-13-chi_square/eq111.png">인 카이제곱 분포를 따르는 것을 알 수 있다.

# 참고문헌

* [Statistics for application (MIT Lecture, 18.443) / Section 10. Chi-squared goodness-of-fit test](https://ocw.mit.edu/courses/mathematics/18-443-statistics-for-applications-fall-2006/lecture-notes/lecture11.pdf)
* [StackExchange: Proof of Pearson's chi squared test](https://math.stackexchange.com/questions/839940/proof-of-pearsons-chi-squared-test)
* [SPSS Tutorial: Chi Square Analysis, The Open University](https://www.open.ac.uk/socialsciences/spsstutorial/files/tutorials/chi-square.pdf)
* [Seven proofs of the Pearson Chi-squared independence test and its graphical interpretation](https://arxiv.org/pdf/1808.09171.pdf)

<p align = "center">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/_GrdeYtYLO4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>