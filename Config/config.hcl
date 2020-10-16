{
  "ui": "true",
  "disable_mlock": "true",
  "listener":  {
    "tcp":  {
      "address":  "0.0.0.0:8200",
      "tls_disable": "false",
      "tls_min_version": "tls13",
      "tls_cert_file": "/vault/certs/vault-cert.crt",
      "tls_key_file": "/vault/certs/vault-cert.key"
    }
  },

  "backend": {
    "file": {
      "path": "/vault/file"
    }
  },

  "default_lease_ttl": "24h",
  "max_lease_ttl": "168h",
  "api_addr": "http://127.0.0.1:8200"
}
