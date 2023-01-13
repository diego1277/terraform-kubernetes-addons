output "addon_id" {
  description = "managed ebs addon id"
  value = try(aws_eks_addon.this[0].id,null)
}
