resource "aws_kinesis_stream" "test_stream" {
  name             = var.customer-kinesis-stream-name
  shard_count      = 1
  retention_period = 48

  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
  ]

  tags = {
    Environment = "test"
  }
}
