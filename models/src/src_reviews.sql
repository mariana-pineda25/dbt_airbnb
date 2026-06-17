with raw_reviews as (

    select
        *
    from dbt_airbnb.raw.raw_reviews

)

-- column naming
select
    listing_id,
    date as review_date,
    reviewer_name,
    comments as review_comments,
    sentiment as review_sentiment
from raw_reviews