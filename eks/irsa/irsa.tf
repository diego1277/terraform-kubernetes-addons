resource "aws_iam_role" "this" {
  name = "${var.service_account_name}_irsa_iam_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRoleWithWebIdentity"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Federated = "${var.openid_connect_arn}"
        }
        Condition = {
          StringEquals = {            
            "${var.openid_connect_url}:sub": "system:serviceaccount:${var.namespace}:${var.service_account_name}"
          }
        }        
      },
    ]
  })
}
resource "aws_iam_role_policy_attachment" "this" {
  policy_arn = var.policy_arn
  role       =  aws_iam_role.this.name
}
