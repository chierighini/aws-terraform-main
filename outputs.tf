# output "k8s_endpoint" {
#   value = module.k8s.cluster_endpoint
# }

# output "cluster_id" {
#   value = module.k8s.cluster_id
# }

# output "jenkins_pub_ip" {
#   value = module.jenkins.jenkins_ip_address
# }

output "bot_pub_ip" {
  value = module.discord-bot.bot_instance_ip
}
