output metadata {
  description = "status of the deployed release"
  value = helm_release.this.metadata 
}
