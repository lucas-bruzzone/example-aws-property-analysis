output "lambda_geospatial_function_name" {
  description = "Name of the geospatial analysis Lambda function"
  value       = module.lambda_geospatial.lambda_function_name
}

output "lambda_geospatial_function_arn" {
  description = "ARN of the geospatial analysis Lambda function"
  value       = module.lambda_geospatial.lambda_function_arn
}

output "lambda_geospatial_layer_arn" {
  description = "ARN of the geospatial Lambda layer"
  value       = module.lambda_geospatial_layer.lambda_layer_arn
}

output "sqs_event_mapping_uuid" {
  description = "UUID of the SQS event source mapping"
  value       = aws_lambda_event_source_mapping.sqs_trigger.uuid
}