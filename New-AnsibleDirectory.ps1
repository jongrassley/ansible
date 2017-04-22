function New-AnsibleDirectory
{
    param(
        $Path = ".",
        $Role = "common"
    )

    $directories = "group_vars",
    "host_vars",
    "library",
    "filter_plugins",
    "roles",
    "roles/$Role",
    "roles/$Role/tasks",
    "roles/$Role/handlers",
    "roles/$Role/templates",
    "roles/$Role/files",
    "roles/$Role/vars",
    "roles/$Role/defaults",
    "roles/$Role/meta",
    "roles/$Role/library",
    "roles/$Role/lookup_plugins"

    $files = "prod_inv",
    "staging_inv",
    "group_vars/group1",
    "group_vars/group2",
    "host_vars/hostname1",
    "host_vars/hostname2",
    "playbook.yml",
    "fileservers.yml",
    "roles/$Role/tasks/main.yml",
    "roles/$Role/handlers/main.yml",
    "roles/$Role/templates/ntp.conf.j2",
    "roles/$Role/files/bar.txt",
    "roles/$Role/files/foo.sh",
    "roles/$Role/vars/main.yml",
    "roles/$Role/defaults/main.yml",
    "roles/$Role/meta/main.yml"

    foreach ($directory in $directories)
    {
        New-Item -ItemType Directory -Path "$Path/$directory" -ErrorAction Continue
    }

    foreach ($file in $files)
    {
        New-Item -ItemType File -Path "$Path/$file" -ErrorAction Continue
    }
}