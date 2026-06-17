WITH raw_reviews AS (
    SELECT
        *
    FROM
        DBT_AIRBNB.RAW.RAW_REVIEWS
)
-- column naming
SELECT
    listing_id,
    date AS review_date,
    reviewer_name,
    comments as review_comments,
    sentiment as review_sentiment
FROM
    raw_reviews