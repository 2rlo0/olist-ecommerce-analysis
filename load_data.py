import pandas as pd
from sqlalchemy import create_engine

# MySQL 연결 정보
username = "root"
password = "1234"
host = "localhost"
port = "3306"
database = "olist_project"

# MySQL 연결 엔진 생성
engine = create_engine(
    f"mysql+pymysql://{username}:{password}@{host}:{port}/{database}"
)

# CSV 파일과 테이블 이름 매핑
files = {
    "olist_customers_dataset.csv": "customers",
    "olist_orders_dataset.csv": "orders",
    "olist_order_items_dataset.csv": "order_items",
    "olist_order_payments_dataset.csv": "payments",
    "olist_order_reviews_dataset.csv": "reviews",
    "olist_products_dataset.csv": "products",
    "olist_sellers_dataset.csv": "sellers",
    "olist_geolocation_dataset.csv": "geolocation",
    "product_category_name_translation.csv": "category_translation"
}

# 반복문으로 CSV 적재
for file_name, table_name in files.items():

    print(f"\n[{table_name}] 적재 시작...")

    # CSV 읽기
    df = pd.read_csv(f"data/{file_name}")

    # MySQL 저장
    df.to_sql(
        name=table_name,
        con=engine,
        if_exists="replace",
        index=False
    )

    print(f"[{table_name}] 저장 완료!")

print("\n모든 데이터 적재 완료!")