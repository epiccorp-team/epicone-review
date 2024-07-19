# Flutter 코드 테스트 프로젝트 : "Wine Store"

이 프로젝트는 아래 환경에서 제작되었습니다.

- Flutter:  3.19.3
- Dart: 3.3.1

---

🍷 Wine Store는 다음과 같은 기능을 제공해야 합니다.

1. 로그인
2. 와인 목록 조회
3. 와인 상세 조회
4. 와인 구매

✔️ **단, 와인 목록 조회 및 상세 조회는 간단한 형태로 이미 구현 되어 있습니다.**
=> **리뷰이께서는 나머지 ***로그인***과 ***와인 구매*** 기능을 구현해주세요.**

✔️ **신규 구현 기능 외에도, 앱만 잘 작동한다면 나머지 기능도 리팩토링, 개발방법론 적용, 테스팅 등은 모두 자유입니다!**


---


로그인과 구매 기능 구현을 위해 만들어진 임의 API는 아래와 같습니다.

### 로그인

- 유저는 'Sign In' 버튼을 클릭하여 로그인을 할 수 있습니다.
- 유저가 기입해야하는 로그인에 필요한 정보는 없습니다.
- 유저는 앱상에서 현재의 로그인 여부를 확인할 수 있습니다.
- 로그인 API
  - Method: GET
  - URL: https://dev-api.epicone.co.kr/api/v1/review/user
  - 20%의 확률로 로그인을 실패합니다.

```dart
// response : 로그인 성공
// statusCode : 200
{
  "id": "5ca9b7a5-8701-4e0a-8051-695943a37d1f",
  "name": "에픽원",
  // 사용 가능한 포인트
  "point_remained": 1000,
  // 사용 가능한 기능들
  "features": [
    {
      "key": "order",
      "name": "구매하기",
      // 해당 기능에 사용할 수 있는 포인트 비율 제한 (기능사용포인트제한)
      "point_can_use_limit": 0.2
    }
  ]
}


// response : 로그인 실패
// statusCode : 418
{
  "message": "실패"
}
```

### 와인 구매

- 유저는 와인 상세 페이지에서 'Purchase' 버튼을 눌러 구매하기 페이지로 이동합니다.
- 구매하기 페이지에서는 다음과 같은 정보를 유저에게 입력받습니다.
  - 배송 주소
  - 배송 주소 상세
    - 주소 검색 외부서비스를 연동하지 않고 사용자에게 직접 입력받습니다.
  - 사용할 포인트
- 개발자는 다음과 같은 주문 정보를 임의로 설정합니다. *주어진 API의 정보를 최대한 활용하되, 없으면 하드코딩도 무관
  - 주문 정보 (ex. 주문번호, 상품명, 가격 등)
- 유저는 모든 정보를 입력 후 'Purchase' 버튼을 눌러 와인 구매를 진행합니다.
- 와인 구매 API
  - Method: POST
  - URL: https://dev-api.epicone.co.k/api/v1/review/order
  - API 응답은 20%의 확률로 와인 구매가 실패 되도록 설계되었습니다.
  - Basic {token}
    - token에 해당하는 값은 User API 에서 주어지는 사용자의 ID 값입니다.

```dart
    // Request Header
    {
        // user.id
        "Authorization": "Basic {token}"
    }

    // Request Body
    {
        "address": "서울 성동구",
        "address_detail": "광나루로 176 6층 에픽코퍼레이션",
        "points_used": 4000,
        "price": 20000,
        "order_name": "Cloudy Bay Sauvignon Blanc"
    }

    // Response: 주문 성공
    // statusCode: 200
    {
        "message": "주문 성공"
    }

    // Response: 주문 실패
    // statusCode: 418
    {
        "message": "잔액이 부족합니다"
    }
```

### 포인트 정책

- 사용가능한 포인트는 유저가 보유한 총 포인트를 초과할 수 없습니다.
  - 유저가 보유한 총 포인트는 로그인 API 에서 `point_remained` 값입니다.
- 사용가능한 포인트는 기능별로 제한될 수 있습니다.
  - 기능별 제한은 로그인 API 에서 `features` 값에서 확인할 수 있습니다.
  - 기능별 제한은 `point_can_use_limit` 값으로 확인할 수 있습니다.
  - 예를 들어, 주문 기능의 `point_can_use_limit` 값이 0.2라면 사용가능한 포인트는 상품 금액의 20%를 초과할 수 없습니다.

---

# 제출방법

### 자료형식

Zip, PR 등 자유

### 제출방법

이메일 : cto@epiccorp.io

### 제출기한

최초 제출 요청일로 부터 3일 이내 (영업일 기준)

---

다시 한번 에픽코퍼레이션에 지원해주셔서 감사드립니다 :)

감사합니다.
