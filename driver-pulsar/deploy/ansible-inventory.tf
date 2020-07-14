# generate inventory file for Ansible
resource "local_file" "hosts_cfg" {
  content = templatefile("${path.module}/templates/ansible-hosts.tpl",
  {
    zookeeper_hosts = aws_instance.zookeeper.*
    pulsar_hosts = aws_instance.pulsar.*
    prometheus_hosts = aws_instance.prometheus.*
    client_hosts = aws_instance.client.*
  }
  )
  filename = "./ansible-hosts.ini"
}

