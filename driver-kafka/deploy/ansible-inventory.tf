# generate inventory file for Ansible
resource "local_file" "hosts_cfg" {
  content = templatefile("${path.module}/templates/ansible-hosts.tpl",
  {
    zookeeper_hosts = aws_instance.zookeeper.*.private_ip
    kafka_hosts = aws_instance.kafka.*.private_ip
    client_hosts = aws_instance.client.*.private_ip
  }
  )
  filename = "./ansible-hosts.ini"
}

