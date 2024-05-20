create
or replace table rgindallas.host_activity_reduced (
    host VARCHAR,
    metric_name VARCHAR,
    metric_array ARRAY(INTEGER),
    month_start VARCHAR
)
with
    (
        FORMAT = 'PARQUET',
        partitioning = ARRAY['metric_name', 'month_start']
    )
    -- tag for feedback
