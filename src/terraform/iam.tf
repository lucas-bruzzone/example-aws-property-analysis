# Use existing role from phase 1 and add specific policies
data "aws_iam_role" "lambda_analysis" {
  name = data.terraform_remote_state.analysis_infra.outputs.lambda_analysis_role_name
}

# Additional policy for external API calls
resource "aws_iam_role_policy" "lambda_external_apis" {
  name = "${var.project_name}-lambda-external-apis-policy"
  role = data.aws_iam_role.lambda_analysis.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "secretsmanager:GetSecretValue"
        ]
        Resource = [
          "arn:aws:secretsmanager:${var.aws_region}:*:secret:*nasa*",
          "arn:aws:secretsmanager:${var.aws_region}:*:secret:*sentinel*",
          "arn:aws:secretsmanager:${var.aws_region}:*:secret:*weather*"
        ]
      },
      {
        Effect = "Allow"
        Action = [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ]
        Resource = "arn:aws:logs:*:*:*"
      }
    ]
  })
}