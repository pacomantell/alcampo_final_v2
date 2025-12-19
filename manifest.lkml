project_name: "pmz_prueba_import"

constant: release_version {
  value: "master"  # Este es el valor por defecto
  export: override_required
}

remote_dependency: models {
  url: "https://github.com/pacomantell/alcampo_final_v2.git"
  ref: "@{release_version}"
}
