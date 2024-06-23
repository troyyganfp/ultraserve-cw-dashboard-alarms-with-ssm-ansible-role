cat > /tmp/cloudwatch_dashboard_template.json <<ABC
{
    "widgets": [
        {
            "height": 5,
            "width": 6,
            "y": 0,
            "x": 0,
            "type": "metric",
            "properties": {
                "metrics": [
                    [
                        "CWAgent",
                        "disk_used_percent",
                        "path",
                        "/",
                        "InstanceId",
                        "i-09fb5cdf306e7abd4",
                        "device",
                        "xvda1",
                        "fstype",
                        "xfs"
                    ]
                ],
                "sparkline": true,
                "view": "singleValue",
                "region": "us-east-1",
                "period": 300,
                "start": "-PT3H"
            }
        },
        {
            "height": 5,
            "width": 6,
            "y": 0,
            "x": 6,
            "type": "metric",
            "properties": {
                "metrics": [
                    [
                        "AWS/EC2",
                        "CPUUtilization",
                        "InstanceId",
                        "i-09fb5cdf306e7abd4",
                        {
                            "label": "i-09fb5cdf306e7abd4 (ip-172-31-38-151.ec2.internal)"
                        }
                    ]
                ],
                "sparkline": true,
                "view": "singleValue",
                "region": "us-east-1",
                "period": 300
            }
        },
        {
            "height": 5,
            "width": 12,
            "y": 0,
            "x": 12,
            "type": "metric",
            "properties": {
                "metrics": [
                    [
                        "CWAgent",
                        "mem_used_percent",
                        "InstanceId",
                        "i-09fb5cdf306e7abd4",
                        {
                            "label": "i-09fb5cdf306e7abd4 (ip-172-31-38-151.ec2.internal)"
                        }
                    ],
                    [
                        ".",
                        "mem_used",
                        ".",
                        ".",
                        ".",
                        ".",
                        ".",
                        ".",
                        ".",
                        "."
                    ]
                ],
                "sparkline": true,
                "view": "singleValue",
                "region": "us-east-1",
                "period": 300
            }
        },
        {
            "height": 8,
            "width": 24,
            "y": 5,
            "x": 0,
            "type": "metric",
            "properties": {
                "metrics": [
                    [
                        "AWS/EC2",
                        "NetworkPacketsOut",
                        "InstanceId",
                        "i-09fb5cdf306e7abd4"
                    ],
                    [
                        ".",
                        "NetworkPacketsIn",
                        ".",
                        ".",
                        {
                            "region": "us-east-1",
                            "accountId": "i-09fb5cdf306e7abd4"
                        }
                    ],
                    [
                        ".",
                        "NetworkIn",
                        ".",
                        "i-09fb5cdf306e7abd4",
                        {
                            "region": "us-east-1"
                        }
                    ],
                    [
                        ".",
                        "NetworkOut",
                        ".",
                        ".",
                        {
                            "region": "us-east-1"
                        }
                    ]
                ],
                "view": "timeSeries",
                "stacked": false,
                "region": "us-east-1",
                "period": 300
            }
        }
    ]
}
ABC