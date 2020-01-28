# git-ftp-action

Uses [git-ftp](https://github.com/git-ftp/git-ftp) and [GitHub actions](https://github.com/features/actions) to deploy a GitHub repository to a FTP server.

**⚠️ Attention:** This action works only with `actions/checkout@v1` for now. Make sure you use v1 and not v2 or master.

## Example usage

```
name: Deploy via git-ftp
on: push
jobs:
  deploy:
    name: Deploy
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: git-ftp push
      uses: sebastianpopp/git-ftp-action@releases/v2
      with:
        url: "ftp://ftp.example.com/path/"
        user: ${{ secrets.FTP_USER }}
        password: ${{ secrets.FTP_PWD }}
```

## Input parameters

Input parameter | Description | Required | Default
--- | --- | --- | ---
url | git-ftp url (see [documentation](https://github.com/git-ftp/git-ftp/blob/1.5.1/man/git-ftp.1.md#url) for more info) | Yes | N/A
user | FTP username | Yes | N/A
password | FTP password | Yes | N/A
syncroot | Specifies a local directory to sync from as if it were the git project root path. | No | .
