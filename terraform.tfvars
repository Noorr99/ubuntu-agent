# RG name (optional if you like the default from variables.tf)
resource_group_name = "my-azure-agent-rg"

# If you'd rather have a smaller or bigger VM:
size = "Standard_B2ms"

# Provide a valid SSH key
admin_ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCh0j1d7BWDySR7w7uZN56VbB4P3A84MdEP4ILVQslMCGwv9AZG080nPJwigFc1J5eG7bOGx17q1Up8OU/FfqbuK7EaQWi6RkkQ2mUuNQ282BAmd60VwrkJ4UTtVPC6BAZGCc2jMuF6gN0SnSn3jtdfWziH0Q1pP+2EqQiv/uxAXRD7mFfvcboQc/gSYvLXyUouRtayP2L/jTXVuDQpdtcZQSefeyxHM9cmRfqJe6uirLWXwyiUXUPumk6D4QFGk0Fe+tmWiNUgdjgPoALd7Y1ef7ONAqUSvD8VAN9iMDxcUAR0TMB1MhzxsZTgQ/Q30kP7LO1m1nVyP8gifgzqCkGH noor.maaita@pwc.com"
vm_password = "MyStrongPassword123!"

# Optionally choose no public IP:
public_ip = false

# Use your real DevOps org & PAT
azure_devops_url             = "https://dev.azure.com/Champions-Team-DevSecOps/"
azure_devops_pat             = "GBVknRcxXb8mv097EZvvmJhvdKEjmmllsz7puwgJHpnA7rAd912ZJQQJ99BBACAAAAAP1mgpAAASAZDO4Ssi"
azure_devops_agent_pool_name = "Default"

# The custom script SAS info
script_sas_url              = "https://terraformstgaks99.blob.core.windows.net/scripts/configure-agent.sh?sp=r&st=2025-02-09T10%3A39%3A45Z&se=2025-02-11T18%3A39%3A45Z&spr=https&sv=2022-11-02&sr=b&sig=Ui6CyW8vM6iI1STyyC99MGPj1ZPRHT7OWlTpaRH2yAY%3D"
script_storage_account_name = "terraformstgaks99"
script_storage_account_key  = "tShInb/NKFZfkPkfQ4OACsbNF094vhnQ6MmKMdzzsQK/Mr0SY1yG6rUvFz+6roaUDRe97+tUpzL6+AStCpl6Iw=="  # If container is private