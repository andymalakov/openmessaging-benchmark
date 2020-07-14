[zookeeper]
%{ for host in zookeeper_hosts ~}
${host.public_ip} private_ip=${host.private_ip}
%{ endfor ~}

[kafka]
%{ for host in kafka_hosts ~}
${host.public_ip} private_ip=${host.private_ip}
%{ endfor ~}

[client]
%{ for host in client_hosts ~}
${host.public_ip} private_ip=${host.private_ip}
%{ endfor ~}
