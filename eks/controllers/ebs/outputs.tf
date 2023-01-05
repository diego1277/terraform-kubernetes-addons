output "addon_id" {
  description = "managed ebs addon id"
  value = aws_eks_addon.this[0].id
}
