$url = "https://app.us1.signalfx.com/#/infra/entity/datacenter%20hosts?endTime=now&startTime=-4h"
$credentials = [System.Management.Automation.PSCredential]::new("raj.kansal@cloudeq.com", (ConvertTo-SecureString "jaibajrangbalI@0120" -AsPlainText -Force))
$body = @{
>>     search = "search index=_internal sourcetype=splunkd_metrics"
>>     output_mode = "json"
>> }
$response = Invoke-WebRequest -Uri "https://app.us1.signalfx.com/#/infra/entity/datacenter%20hosts?endTime=now&startTime=-4h" -Method Post -Headers @{
>>     "Content-Type" = "application/x-www-form-urlencoded"
>> } -Credential $credentials -Body $body
$response.Content








curl -vvv -k -H "Content-Type: application/json" \
-H "Api-Key: 424fd8e291c5618638d03a97a76a6fb4ee97NRAL" \
-X POST https://metric-api.newrelic.com/metric/v1 \
--data '[{
        "metrics":[{
            "name":"splunk2",
            "type":"gauge",
            "value":2.3,
            "timestamp":'"$(date +%s)"',
            "attributes":{"host.name":"dev.server.com", "category" : "Google Cloud Platform", "categoryDisplayName" : "Google Cloud Platform"}
        }]
    }]'
// running command

# //------------------------

curl -vvv -k -H "Content-Type: application/json" \
-H "Api-Key: 424fd8e291c5618638d03a97a76a6fb4ee97NRAL" \
-X POST https://metric-api.newrelic.com/metric/v1 \
--data '[{
        "metrics":[{
            "name":"splunkMetric100",
            "type":"gauge",
            "value":2.3,
            "timestamp":'"$(date +%s)"',
            "attributes":{"host.name":"Raj", "category" : "Google Cloud Platform", "categoryDisplayName" : "Google Cloud Platform", "categoryInstancesName" : "entity", "dashboardId" : "GIJQyKDAcCo"}
        },{
            "name":"splunkMetric200",
            "type":"gauge",
            "value":2.3,
            "timestamp":'"$(date +%s)"',
            "attributes":{"host.name":"Aman", "category" : "AWS", "categoryDisplayName" : "Amazon Web Services", "categoryInstancesName" : "entity", "productName" : "MWAA"}
        },{
            "name":"splunkMetric300",
            "type":"gauge",
            "value":2.3,
            "timestamp":'"$(date +%s)"',
            "attributes":{"host.name":"AzureCloud", "category" : "Az", "categoryDisplayName" : "Azure", "categoryInstancesName" : "entity", "productName" : "MWAA"}
        }]
    }]'