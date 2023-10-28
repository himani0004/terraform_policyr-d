
resource "newrelic_nrql_alert_condition" "newrelic_condition" {
  
  policy_id                      = 4878562
  type                           = "static"
  name                           = "Policy_condition_himani"
  description                   = "Added this condition form terraform with an existing policy in new relic"
  
  enabled                        = true
  violation_time_limit_seconds   = 3600
  fill_option                    = "static"
  fill_value                     = 1.0
  

  nrql {
    query = "SELECT average(host.cpuPercent) AS 'CPU used %' FROM Metric WHERE `entityGuid` = 'NDA0Mzc0NnxJTkZSQXxOQXwyNzExMjQ4Njc1OTYwMTU5NTcw' "
  }

  critical {
    operator              = "above"
    threshold             = 5.5
    threshold_duration    = 300
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = "above"
    threshold             = 3.5
    threshold_duration    = 600
    threshold_occurrences = "ALL"
  }
}