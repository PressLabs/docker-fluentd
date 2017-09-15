# deedee
Big sister who is watching everything you are doing in the lab

### Purpose
This container is used to get all output from activity stream and send it to
google's bigquery.

In order to make this happen, this container needs to run on each backend host.

### Config
Different environment variables can be set:
  * `PRESSLABS_ACTIVITY_LOGS_PATH` - path to activity logs directory
  * `GCP_PROJECT` - google cloud platform project
  * `GCP_JSON_KEY_PATH` - google cloud platform json key. It can be generated via google cloud console
  * `GCP_DATASET` - big query's dataset. You need to manually create it.
  * `GCP_TABLES` - big query's tables. You need to manually create them.
