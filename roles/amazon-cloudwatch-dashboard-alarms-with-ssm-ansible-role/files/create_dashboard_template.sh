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
                    [ "CWAgent", "disk_used_percent", "path", "/", "InstanceId", "{{instance_id}}", "device", "xvda1", "fstype", "xfs" ]
                ],
                "sparkline": true,
                "view": "singleValue",
                "region": "{{aws_region}}",
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
                    [ "AWS/EC2", "CPUUtilization", "InstanceId", "{{instance_id}}", { "label": "{{instance_id}} ({{inventory_hostname}})" } ]
                ],
                "sparkline": true,
                "view": "singleValue",
                "region": "{{aws_region}}",
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
                    [ "CWAgent", "mem_used_percent", "InstanceId", "{{instance_id}}", { "label": "{{instance_id}} ({{inventory_hostname}})" } ],
                    [ ".", "mem_used", ".", ".", ".", ".", ".", ".", ".", "."]
                ],
                "sparkline": true,
                "view": "singleValue",
                "region": "{{aws_region}}",
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
                    [ "AWS/EC2", "NetworkPacketsOut", "InstanceId", "{{instance_id}}" ],
                    [ ".", "NetworkPacketsIn", ".", ".", { "region": "{{aws_region}}", "accountId": "{{instance_id}}" } ],
                    [ ".", "NetworkIn", ".", "{{instance_id}}", { "region": "{{aws_region}}" } ],
                    [ ".", "NetworkOut", ".", ".", { "region": "{{aws_region}}"} ]
                ],
                "view": "timeSeries",
                "stacked": false,
                "region": "{{aws_region}}",
                "period": 300
            }
        }
        // {
        //     "height": 9,
        //     "width": 24,
        //     "y": 13,
        //     "x": 0,
        //     "type": "metric",
        //     "properties": {
        //         "metrics": [
        //             [ "CWAgent", "processes_total", "InstanceId", "i-04f74ea6c9782df73", "AutoScalingGroupName", "awseb-e-jmbh9imepy-stack-AWSEBAutoScalingGroup-5HOS9HAB8C6K", "ImageId", "ami-08bb6051638d96a7e", "InstanceType", "t2.micro", { "region": "us-east-1" } ],
        //             [ ".", "processes_blocked", ".", ".", ".", ".", ".", ".", ".", ".", { "region": "us-east-1" } ],
        //             [ ".", "processes_sleeping", ".", ".", ".", ".", ".", ".", ".", ".", { "region": "us-east-1" } ],
        //             [ ".", "processes_dead", ".", "i-00ef83569a3ebec4e", ".", ".", ".", ".", ".", ".", { "region": "us-east-1" } ],
        //             [ ".", "processes_stopped", ".", "i-04f74ea6c9782df73", ".", ".", ".", ".", ".", ".", { "region": "us-east-1" } ],
        //             [ ".", "processes_zombies", ".", ".", ".", ".", ".", ".", ".", ".", { "region": "us-east-1" } ]
        //         ],
        //         "view": "timeSeries",
        //         "stacked": false,
        //         "region": "us-east-1",
        //         "period": 300
        //     }
        // }
    ]
}
ABC
