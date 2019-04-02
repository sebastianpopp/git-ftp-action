# git-ftp-action
Uses [git-ftp](https://github.com/git-ftp/git-ftp) and [GitHub actions](https://github.com/features/actions) to deploy a GitHub project to a FTP server.

## Usage
```
action "Deploy Live" {
  uses = "sebastianpopp/git-ftp-action@master"
  secrets = ["FTP_PWD", "FTP_USER"]
  env = {
    FTP_DEST = "ftp://ftp.example.com/path/"
  }
}
```
