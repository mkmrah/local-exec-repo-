resource "null_resource" "bash_scrtip_local_exec" {
  provisioner "local-exec" {
    command = "chmod +x test-script.sh | ./test-script.sh"
    #command = "printenv"
  }
} 


