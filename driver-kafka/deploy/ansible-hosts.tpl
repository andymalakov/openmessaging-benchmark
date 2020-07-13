[zookeeper]
%{ for host in zookeeper_hosts ~}
${host}
%{ endfor ~}

[kafka]
%{ for host in kafka_hosts ~}
${host}
%{ endfor ~}

[client]
%{ for host in client_hosts ~}
${host}
%{ endfor ~}
