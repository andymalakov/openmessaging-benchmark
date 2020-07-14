[zookeeper]
%{ for host in zookeeper_hosts ~}
${host.public_ip} private_ip=${host.private_ip}
%{ endfor ~}

[pulsar]
%{ for host in pulsar_hosts ~}
${host.public_ip} private_ip=${host.private_ip}
%{ endfor ~}

[prometheus]
%{ for host in prometheus_hosts ~}
${host.public_ip} private_ip=${host.private_ip}
%{ endfor ~}

[client]
%{ for host in client_hosts ~}
${host.public_ip} private_ip=${host.private_ip}
%{ endfor ~}
