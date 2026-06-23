# 🛒 Olist E-commerce Data Analysis

## 📌 Project Overview

브라질 이커머스 플랫폼 Olist의 주문 데이터를 활용하여 매출 구조, 고객 특성, 상품 카테고리 성과, 지역별 매출 현황, 고객 만족도에 영향을 주는 요인을 분석한 프로젝트입니다.

---

## 🎯 Project Goal

- 매출 추이 및 주요 수익원 파악
- 고객 구매 패턴 분석
- 상품 카테고리별 성과 분석
- 지역별 매출 특성 분석
- 배송 지연이 고객 만족도에 미치는 영향 분석

---

## 🛠 Tech Stack

| Category | Tools |
|-----------|--------|
| Language | Python |
| Database | MySQL |
| Analysis | Pandas |
| Visualization | Matplotlib |
| Environment | Jupyter Notebook |
| Version Control | Git, GitHub |

---

## 📂 Dataset

- Olist Brazilian E-Commerce Public Dataset
- 약 10만 건의 주문 데이터 분석

주요 테이블

- customers
- orders
- order_items
- products
- payments
- reviews

---

# 📊 Analysis

## 1. Revenue Analysis

### 분석 내용

- 월별 매출 추이 분석
- 평균 주문 금액(AOV) 분석

### 주요 인사이트

- 시기별 매출 변화를 통해 성장 구간 확인
- 전체 매출 구조 파악

---

## 2. Product Analysis

### 분석 내용

- 카테고리별 판매량 분석
- 카테고리별 매출 분석
- 카테고리 매출 집중도 분석

### 주요 인사이트

- Health & Beauty 카테고리가 가장 높은 매출 기록
- 상위 카테고리들이 전체 매출의 상당 부분 차지

---

## 3. Customer Analysis

### 분석 내용

- 구매 빈도(Frequency) 분석
- RFM 고객 세분화
- Pareto 분석

### 주요 인사이트

- 전체 고객의 약 96.9%가 1회 구매 고객
- 상위 10% 고객이 전체 매출의 41.2% 차지
- 일부 고객의 매출 기여도가 높음을 확인

---

## 4. Regional Analysis

### 분석 내용

- 지역별 매출 분석
- 고객 수 대비 매출 분석
- 고객 1인당 평균 매출 분석

### 주요 인사이트

- SP 지역이 가장 높은 매출과 고객 수를 기록
- 일부 지역은 고객 수 대비 높은 객단가를 보유

---

## 5. Customer Experience Analysis

### 분석 내용

- 배송 지연 여부 분석
- 배송 지연 일수와 리뷰 점수 관계 분석

### 주요 인사이트

| 배송 상태 | 1점 비율 | 5점 비율 |
|-----------|-----------:|-----------:|
| Early | 6.60% | 62.43% |
| On Time | 8.52% | 50.43% |
| 1~3 Days Late | 25.16% | 33.14% |
| 4~7 Days Late | 58.54% | 14.12% |
| 7+ Days Late | 70.14% | 6.81% |

배송 지연이 길어질수록 고객 만족도가 급격하게 감소하는 경향을 확인하였다.

---

# 💡 Key Findings

### 고객

- 전체 고객의 약 96.9%가 1회 구매 고객
- 상위 10% 고객이 전체 매출의 41.2% 차지

### 상품

- Health & Beauty 카테고리가 최고 매출 기록
- 카테고리별 매출 편중 현상 존재

### 지역

- SP 지역이 핵심 시장 역할 수행

### 고객 경험

- 배송 지연은 고객 만족도 하락에 직접적인 영향
- 7일 이상 배송 지연 시 1점 리뷰 비율 70.1%

---

# 📁 Project Structure

```text
olist_proj/
│
├── analysis.ipynb
├── analyst.sql
├── load_data.py
├── requirements.txt
└── README.md
```