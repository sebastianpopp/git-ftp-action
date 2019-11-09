# git-ftp-action

Uses [git-ftp](https://github.com/git-ftp/git-ftp) and [GitHub actions](https://github.com/features/actions) to deploy a GitHub repository to a FTP server.

## Example usage

```
name: Deploy via git-ftp
on: push
jobs:
  deploy:
    name: Deploy
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: git-ftp push
      uses: sebastianpopp/git-ftp-action@releases/v2
      with:
        host: "ftp://ftp.example.com/path/"
        user: ${{ secrets.FTP_USER }}
        password: ${{ secrets.FTP_PWD }}
```

## Input parameters

Input parameter | Description | Required | Default
--- | --- | --- | ---
url | git-ftp url (see [documentation](https://github.com/git-ftp/git-ftp/blob/1.5.1/man/git-ftp.1.md#url) for more info) | Yes | N/A
user | FTP username | Yes | N/A
password | FTP password | Yes | N/A
