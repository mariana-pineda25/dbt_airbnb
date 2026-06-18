select *
from {{ ref('dim_listings_cleansed') }}
where minimum_nights < 1
limit 10 -- if it returns any records it fails, if it returns 0 records it passes