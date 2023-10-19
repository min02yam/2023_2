# 농스타: LSTM을 활용한 기상 데이터 기반 농작물 가격 예측 서비스
2023 한국정책착회 빅데이터 분석 분야 프로젝트 평가 **한국정책학회장상(우수상)** 수상작입니다.

## Overview
### 문제 정의
- 지난달 7월 집중호우 발생으로 애호박 도매가격이 전일대비 63.3%상승하는 등 농산물 가격 급등으로 애그플레이션(Agriculture) 확산
- OECD 2019년 기준 한국은 고령자 상대적 빈곤율이 40% 초과하는 유일한 국가
- ‘제4차 저출산 제4차 저출산·고령사회 기본계획(2021~2025)'에 따르면 4차 산업혁명 기술 기반 노인 복지 서비스 확대 예정
  <br>


![image](https://github.com/min02yam/2023_2_tmp/assets/93497667/d4f14b23-58b3-4f32-b734-5bb2965a6fe4)

### 데이터 전처리

![image](https://github.com/min02yam/2023_2_tmp/assets/93497667/117926bd-cae7-404d-8b9d-7d06de30a434)

1. 데이터 수집
- 기간: 2016.01.01 ~ 2021.12.21(총 5년)

| 구분 | 데이터명 | 출처 |
|-------|-------|-------|
| 기상 | 방재기상관측(AWS)| [기상청 날씨마루](https://bd.kma.go.kr/kma2020/svc/main.do) |
| 기상 | 종관기상관측(ASOS) | [기상청 기상자료개방포털](https://data.kma.go.kr/cmmn/main.do) |
| 농작물 | 도매시장 품목별 거래 현황 | [농식품 빅데이터 거래소(KADX)](https://kadx.co.kr/) |
| 생산량<BR>재배면적 | 농작물 생산조사 | [국가통계포털(KOSIS)](https://kosis.kr/index/index.do) |

2. 결측치/이상치 파악
3. 이상치 대체
4. 변수간 관계 파악
5. 파생변수 생성

### 모델링
1. 목표
2. 품목별 모델링
3. 앙상블
4. 결과

### 활용방안 및 기대효과


## 2. 파일구성
1. Data 폴더: Raw데이터 및 전처리 데이터 일체
2. Code 폴더: 각각 .Rmd/.ipynb
    - `01_Preprocess.Rmd`
    - `02_Modeling_MLR.Rmd`
     - `03_Modeling_LSTM.ipynb`

## 3. 코드실행 유의사항
데이터들을 'data' 폴더에 위치시켜 주시기 바랍니다.

## 4. 개발환경
### 4.1 로컬
- CPU : Intel(R) Core(TM) i7-10750H CPU @ 2.60GHz 2.59 GHz
- RAM : 16.0GB
- GPU : No GPU Computing
### 4.2 R
- R 버전 : 4.3.1
  - readr: 2.1.4 
  - readxl: 1.4.3
  - dplyr: 1.1.2
  - data.table: 1.14.8
  - magrittr: 2.0.3
  - skimr: 2.1.5
  - ggplot2: 3.4.2
  - esquisse: 1.1.2
  - DataExplorer: 0.8.2
  - lubridate: 1.9.2
  - stringr: 1.5.0
  - naniar: 1.0.0
  - VIM: 6.2.2
  - imputeTS: 3.3
  - fastDummies: 1.7.3
  - corrplot: 0.92
  - nortest: 1.0-4


### 4.3 Python 
Google Colab Pro
