CREATE TABLE fashion_products (
    competence_date DATE,
    brand TEXT,
    category1_code TEXT,
    category2_code TEXT,
    category3_code TEXT,
    product_code BIGINT PRIMARY KEY,
    title TEXT,
    full_price_eur NUMERIC,
    price_eur NUMERIC,
    flg_discount INTEGER,
    discount_pct NUMERIC,
    category3_clean TEXT
);


SELECT COUNT(*) AS total_products
FROM fashion_products;

SELECT
    category1_code,
    COUNT(*) AS total_products
FROM fashion_products
GROUP BY category1_code
ORDER BY total_products DESC;


SELECT
    brand,
    COUNT(*) AS total_products
FROM fashion_products
GROUP BY brand
ORDER BY total_products DESC
LIMIT 10;

SELECT
    brand,
    COUNT(*) AS total_products,

    ROUND(
        PERCENTILE_CONT(0.5)
        WITHIN GROUP (ORDER BY price_eur)::NUMERIC,
        2
    ) AS median_price_eur,

    SUM(flg_discount) AS discounted_products,

    ROUND(
        100.0 * SUM(flg_discount) / COUNT(*),
        2
    ) AS discount_rate_pct

FROM fashion_products

GROUP BY brand

ORDER BY total_products DESC

LIMIT 10;

SELECT
    brand,
    COUNT(*) AS total_bags,

    ROUND(
        PERCENTILE_CONT(0.5)
        WITHIN GROUP (ORDER BY price_eur)::NUMERIC,
        2
    ) AS median_bag_price,

    ROUND(
        100.0 * SUM(flg_discount) / COUNT(*),
        2
    ) AS discount_rate_pct

FROM fashion_products

WHERE category1_code = 'BAGS'

GROUP BY brand

HAVING COUNT(*) >= 100

ORDER BY median_bag_price DESC

LIMIT 15;