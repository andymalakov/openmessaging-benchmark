public_key_path = "~/.ssh/pulsar_aws.pub"
region          = "us-east-2"

ami = {
  "us-east-2" = "ami-cfdafaaa" // RHEL-7.4
  "us-west-2" = "ami-9fa343e7" // RHEL-7.4
}

instance_types = {
  "pulsar"      = "i3.4xlarge"
  "zookeeper"   = "t2.small"
  "client"      = "c5.2xlarge"
  "prometheus"  = "t2.small"
}

num_instances = {
  "client"      = 4
  "pulsar"      = 3
  "zookeeper"   = 3
  "prometheus"  = 1
}
