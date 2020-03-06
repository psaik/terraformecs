# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "psaik_log_group" {
  name              = "/ecs/psaik-app"
  retention_in_days = 30

  tags = {
    Name = "psaik-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "psaik_log_stream" {
  name           = "psaik-log-stream"
  log_group_name = aws_cloudwatch_log_group.psaik_log_group.name
}

