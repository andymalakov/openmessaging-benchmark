# generate inventory file for Ansible
resource "local_file" "hosts_cfg" {
  content = templatefile("${path.module}/templates/ansible-hosts.tpl",
  {
    zookeeper_hosts = aws_instance.zookeeper.*
    kafka_hosts = aws_instance.kafka.*
    client_hosts = aws_instance.client.*
  }
  )
  filename = "./ansible-hosts.ini"
}

