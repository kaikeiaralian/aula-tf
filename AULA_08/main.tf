module "master" {
  source = "git@github.com:kaikeiaralian/8031_mod-gcp-instance.git?ref=v1.2"

  name                    = "tf-master"
  image                   = "ubuntu-os-cloud/ubuntu-1804-lts"
  machine_type            = "e2-medium"
  metadata_startup_script = "./scripts/install_master.sh"
  tags                    = ["master"]

  ssh_keys = [
    {
      publickey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC5nHdRDRBJ301DHmHKDyXFYqSp9FOu4f4OJ/NRk4iD5pKeEUxrE6aegf9RZHzSlhV7Y7wBSF13XNWM5ueSq8M2E74Li10dMJ9wzy9+gUT7DCNNut0TheGIGmPO9uHRLhTZsoSpAWv0kBW7GXbmL2TxhbNX2P5eWJHeE8WWhc7TULrVgYMXvW4suCtwqOZQiUBEFRXJZWu/+e12LrxUF1h7fJWzCvl0itrmnkVhJPEcoNDXtqeQGrRhmGKHR4ysVVhAOhzQ42c2vM3Cns0+uJxmBkDn5QEt6vCKgt1fWTBv5uCcpjYwSfOssIyO3gZS0GSTMDJFUegNNNC4yd+e4OIHDj1Oy69ZtVmRM36dxyfWKtVUsGtZeya4K7wPZ20349ni5501R3JuXnyzd+RQPJ8bCvZ8NcOB4JA2e0uU+UWYU178xmeOuAXaqJRoYiuZxzs98GJgOhYy8egHny6gDWf0eDaPbwShz6a5Fgtsl4Bo+BTyKhhEG4rAoNIALaotguk= kaikeiaralian@Nitro5"
      user      = "kaikeiaralian"
    },
    {
      publickey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDTxruchb1hVUsUIp6AI6nsWPcpQPi0C3LwyPg8QKoNKXGe/VTzRobrdIEoixFHErm6bKikbkAGMgkuJN8woZ1X3q05c4c5+PMm7sLJ9sRb38UMLx/boMEKJxPRNfKryrkxSB3tA50QNNKQxwgNIdGIp0Z4PlSNJ6Oitjg9Hp/Phe98XHukfkZuEA338q2PUvvISCiRMpO9UAdTTjEBIIkRgsAp8pnkY5KjEWHKGoA380iXIMbdTwHDJuJY9ccEL+y+FJv3ukICFgKfA+VSfglayrTsUTCvTDdfnqErVeMoBSdUsaSSA9PVBO3bMHKPsI+nJ/vdIQiqwV43osQBSAh+cv9+HcDoUm7YPMZaDT3ZPqNGXLZTHX4xF7KPiaoipZbWWGeNwyGv4HSPsBdpdrmClYCiiUBzvB5a0XO68yC7Qo2fBscMEoADM3xX02WJpg8uRfoIifUCyM8eFJMmdYmkXHto9TzkuJL2LCuHBuuSFfmGkP9XE2eXTK+wqenwz2U= kaikeiaralian@Nitro5"
      user      = "kaikeiaralian"
    }
  ]
}

module "worker" {
  source = "git@github.com:kaikeiaralian/8031_mod-gcp-instance.git?ref=v1.2"

  name                    = "tf-worker"
  image                   = "ubuntu-os-cloud/ubuntu-1804-lts"
  machine_type            = "e2-medium"
  amount                  = 2
  metadata_startup_script = "./scripts/install_worker.sh"
  tags                    = ["worker"]

  ssh_keys = [
    {
      publickey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC5nHdRDRBJ301DHmHKDyXFYqSp9FOu4f4OJ/NRk4iD5pKeEUxrE6aegf9RZHzSlhV7Y7wBSF13XNWM5ueSq8M2E74Li10dMJ9wzy9+gUT7DCNNut0TheGIGmPO9uHRLhTZsoSpAWv0kBW7GXbmL2TxhbNX2P5eWJHeE8WWhc7TULrVgYMXvW4suCtwqOZQiUBEFRXJZWu/+e12LrxUF1h7fJWzCvl0itrmnkVhJPEcoNDXtqeQGrRhmGKHR4ysVVhAOhzQ42c2vM3Cns0+uJxmBkDn5QEt6vCKgt1fWTBv5uCcpjYwSfOssIyO3gZS0GSTMDJFUegNNNC4yd+e4OIHDj1Oy69ZtVmRM36dxyfWKtVUsGtZeya4K7wPZ20349ni5501R3JuXnyzd+RQPJ8bCvZ8NcOB4JA2e0uU+UWYU178xmeOuAXaqJRoYiuZxzs98GJgOhYy8egHny6gDWf0eDaPbwShz6a5Fgtsl4Bo+BTyKhhEG4rAoNIALaotguk= kaikeiaralian@Nitro5"
      user      = "kaikeiaralian"
    },
    {
      publickey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC5nHdRDRBJ301DHmHKDyXFYqSp9FOu4f4OJ/NRk4iD5pKeEUxrE6aegf9RZHzSlhV7Y7wBSF13XNWM5ueSq8M2E74Li10dMJ9wzy9+gUT7DCNNut0TheGIGmPO9uHRLhTZsoSpAWv0kBW7GXbmL2TxhbNX2P5eWJHeE8WWhc7TULrVgYMXvW4suCtwqOZQiUBEFRXJZWu/+e12LrxUF1h7fJWzCvl0itrmnkVhJPEcoNDXtqeQGrRhmGKHR4ysVVhAOhzQ42c2vM3Cns0+uJxmBkDn5QEt6vCKgt1fWTBv5uCcpjYwSfOssIyO3gZS0GSTMDJFUegNNNC4yd+e4OIHDj1Oy69ZtVmRM36dxyfWKtVUsGtZeya4K7wPZ20349ni5501R3JuXnyzd+RQPJ8bCvZ8NcOB4JA2e0uU+UWYU178xmeOuAXaqJRoYiuZxzs98GJgOhYy8egHny6gDWf0eDaPbwShz6a5Fgtsl4Bo+BTyKhhEG4rAoNIALaotguk= kaikeiaralian@Nitro5"
      user      = "kaikeiaralian"
    }
  ]
}