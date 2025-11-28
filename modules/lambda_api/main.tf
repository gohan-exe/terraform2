resource "aws_lambda_function" "this" {
  function_name = "${var.project_name}-${var.environment}-lambda"
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  role          = aws_iam_role.lambda_exec.arn
  s3_bucket     = var.lambda_bucket
  s3_key        = var.lambda_object_key
  vpc_config {
    subnet_ids         = var.vpc_subnet_ids
    security_group_ids = var.security_group_ids
  }
}